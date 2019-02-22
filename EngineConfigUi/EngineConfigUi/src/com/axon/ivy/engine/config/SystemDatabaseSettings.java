package com.axon.ivy.engine.config;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.lang3.StringUtils;

import com.axonivy.engine.config.ui.settings.ConfigData;
import com.axonivy.engine.config.ui.settings.SystemProperty;
import com.axonivy.engine.config.ui.settings.WebServerConfig;

import ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration;
import ch.ivyteam.ivy.security.exec.Sudo;
import ch.ivyteam.ivy.server.ServerFactory;
import ch.ivyteam.ivy.server.configuration.Configuration;
import ch.ivyteam.ivy.server.configuration.system.db.AdministratorManager;
import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import ch.ivyteam.ivy.server.configuration.system.db.IConnectionListener;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabase;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTester;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConverter;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseCreator;
import ch.ivyteam.ivy.system.ISystemProperty;
import ch.ivyteam.ivy.system.UserInterfaceFormat;
import ch.ivyteam.util.WaitUtil;

@SuppressWarnings("restriction")
public class SystemDatabaseSettings
{
  private static final int CONNETION_TEST_TIMEOUT = 15;
  private static final String WEB_SERVER_AJP_PORT = "Connector.AJP.Port";
  private static final String WEB_SERVER_AJP_ENABLED = "Connector.AJP.Enabled";
  private static final String WEB_SERVER_HTTPS_PORT = "Connector.HTTPS.Port";
  private static final String WEB_SERVER_HTTPS_ENABLED = "Connector.HTTPS.Enabled";
  private static final String WEB_SERVER_HTTP_PORT = "Connector.HTTP.Port";
  private static final String WEB_SERVER_HTTP_ENABLED = "Connector.HTTP.Enabled";

  private final Configuration configuration = loadOrCreateConfig();
  private final SystemDatabase systemDatabase = createSystemDb(configuration);
  private ConfigData configData = ConfigHelper.loadConfigData(configuration);
  private final ConnectionInfo info = ConnectionInfo.create();
  private final WebServerConfig webServerConfig = new WebServerConfig();
  private final List<SystemProperty> systemProperties = new ArrayList<SystemProperty>();

  private final SystemDatabaseConnectionTester tester = getSystemDb().getConnectionTester();
  private final BlockingListener connectionListener = new BlockingListener();

  private SystemDatabaseSettings()
  {
    tester.addConnectionListener(connectionListener);

    updateWebServerConfig();
    updateWebServerSystemProperties();
  }

  public static SystemDatabaseSettings create()
  {
    return new SystemDatabaseSettings();
  }

  private static Configuration loadOrCreateConfig()
  {
    try
    {
      return Configuration.loadOrCreateConfiguration();
    }
    catch (Exception ex)
    {
      return Configuration.createNewConfiguration();
    }
  }

  private static SystemDatabase createSystemDb(Configuration config)
  {
    SystemDatabase.initialize(config);
    return SystemDatabase.getSystemDatabase();
  }

  public SystemDatabaseCreator createDatabase()
          throws Exception
  {
    return ConfigHelper.createDatabase(configData, configuration);
  }

  public SystemDatabaseConverter convertDatabase()
          throws Exception
  {
    DatabaseConnectionConfiguration currentConfig = ConfigHelper.createConfiguration(configData, configuration);
    int systemDatabaseVersion = getSystemDb().getConnectionTester().getSystemDatabaseVersion();
    return startSystemDatabaseConversion(currentConfig, systemDatabaseVersion);
  }

  private SystemDatabaseConverter startSystemDatabaseConversion(
          DatabaseConnectionConfiguration dbConfig, int dbVersion)
  {
    SystemDatabaseConverter converter = SystemDatabaseConverter.createSystemDatabaseConverter(dbConfig,
            dbVersion);
    converter.start();
    return converter;
  }

  public void updateConfig(SystemDatabaseCreator creator)
  {
    DatabaseConnectionConfiguration dbConfig = creator.getCreatedDatabaseConnectionConfiguration();
    configuration.setSystemDatabaseConnectionConfiguration(dbConfig);
    ConfigHelper.updateConfigData(configData, dbConfig);
  }

  public SystemDatabase getSystemDb()
  {
    return systemDatabase;
  }

  public ConfigData getConfigData()
  {
    return configData;
  }
  
  public void setConfigData(ConfigData configData)
  {
    this.configData = configData;
  }

  public ConnectionInfo getConnectionInfo()
  {
    return info;
  }

  public void updateDbConfig()
  {
    DatabaseConnectionConfiguration dbConfig = ConfigHelper.createConfiguration(configData, configuration);
    configuration.setSystemDatabaseConnectionConfiguration(dbConfig);
  }

  public void saveSystemDb() throws IOException
  {
    updateDbConfig();
    configuration.saveConfiguration();
  }

  public Configuration getConfiguration()
  {
    return configuration;
  }

  public AdministratorManager getAdministratorManager()
  {
    return getSystemDb().getAdministratorManager();
  }

  private boolean saveAdmins()
  {
    AdministratorManager adminManager = getAdministratorManager();
    if (!adminManager.isConnected())
    {
      return false;
    }
    return adminManager.storeAdministrators();
  }

  public WebServerConfig getWebServerConfig()
  {
    return webServerConfig;
  }

  public void updateSystemPropsFromWebServerConfig()
  {
    replaceProperty(WEB_SERVER_AJP_ENABLED, webServerConfig.getAjpEnabled().toString());
    replaceProperty(WEB_SERVER_AJP_PORT, webServerConfig.getAjpPort());
    replaceProperty(WEB_SERVER_HTTP_ENABLED, webServerConfig.getHttpEnabled().toString());
    replaceProperty(WEB_SERVER_HTTP_PORT, webServerConfig.getHttpPort());
    replaceProperty(WEB_SERVER_HTTPS_ENABLED, webServerConfig.getHttpsEnabled().toString());
    replaceProperty(WEB_SERVER_HTTPS_PORT, webServerConfig.getHttpsPort());
  }

  private void replaceProperty(String propertyName, String value)
  {
    systemProperties.stream().filter(x -> x.getName().equalsIgnoreCase(propertyName)).findFirst()
            .get().setValue(value);
  }

  public void updateWebServerConfigFromSystemProps() throws Exception
  {
    setWebServerProperty(WEB_SERVER_AJP_ENABLED, "ajpEnabled");
    setWebServerProperty(WEB_SERVER_AJP_PORT, "ajpPort");
    setWebServerProperty(WEB_SERVER_HTTP_ENABLED, "httpEnabled");
    setWebServerProperty(WEB_SERVER_HTTP_PORT, "httpPort");
    setWebServerProperty(WEB_SERVER_HTTPS_ENABLED, "httpsEnabled");
    setWebServerProperty(WEB_SERVER_HTTPS_PORT, "httpsPort");
  }

  private void setWebServerProperty(String propertyName, String webServerFieldName) throws Exception
  {
    String value = systemProperties.stream().filter(x -> x.getName().equals(propertyName)).findFirst()
            .get().getValue();
    if (propertyName.contains("Enabled"))
    {
      boolean booleanValue = BooleanUtils.toBoolean(value);
      webServerConfig.set(webServerFieldName, booleanValue);
    }
    else
    {
      webServerConfig.set(webServerFieldName, value);
    }
  }

  public void saveWebServerConfig()
  {
    setProperty(WEB_SERVER_HTTP_ENABLED,
            BooleanUtils.toStringTrueFalse(webServerConfig.getHttpEnabled()));
    setProperty(WEB_SERVER_HTTP_PORT, webServerConfig.getHttpPort());
    setProperty(WEB_SERVER_HTTPS_ENABLED,
            BooleanUtils.toStringTrueFalse(webServerConfig.getHttpsEnabled()));
    setProperty(WEB_SERVER_HTTPS_PORT, webServerConfig.getHttpsPort());
    setProperty(WEB_SERVER_AJP_ENABLED,
            BooleanUtils.toStringTrueFalse(webServerConfig.getAjpEnabled()));
    setProperty(WEB_SERVER_AJP_PORT, webServerConfig.getAjpPort());
  }

  private static void setProperty(String key, String value)
  {
    Sudo.exec(() -> ServerFactory.getServer().getApplicationConfigurationManager()
            .getSystemProp(key).setValue(value));
  }

  private void updateWebServerConfig()
  {
    webServerConfig.setHttpEnabled(getPropertyAsBoolean(WEB_SERVER_HTTP_ENABLED));
    webServerConfig.setHttpPort(getProperty(WEB_SERVER_HTTP_PORT));
    webServerConfig.setHttpsEnabled(getPropertyAsBoolean(WEB_SERVER_HTTPS_ENABLED));
    webServerConfig.setHttpsPort(getProperty(WEB_SERVER_HTTPS_PORT));
    webServerConfig.setAjpEnabled(getPropertyAsBoolean(WEB_SERVER_AJP_ENABLED));
    webServerConfig.setAjpPort(getProperty(WEB_SERVER_AJP_PORT));
  }

  private static boolean getPropertyAsBoolean(String key)
  {
    String property = getProperty(key);
    if (property.isEmpty())
    {
      return false;
    }
    return BooleanUtils.toBooleanObject(property);
  }

  private static String getProperty(String key)
  {
    return Sudo.exec(() -> ServerFactory.getServer().getApplicationConfigurationManager()
            .getSystemProp(key).getValue());
  }

  public void updateWebServerSystemProperties()
  {
    Sudo.exec(() -> updateWebServerSystemPropertiesAsSystem());
  }

  private Object updateWebServerSystemPropertiesAsSystem()
  {
    systemProperties.clear();
    List<ISystemProperty> systemProps = ServerFactory.getServer()
            .getApplicationConfigurationManager()
            .getSystemProps();
    for (ISystemProperty property : systemProps)
    {
      if (!property.getUserInterfaceFormat().equals(UserInterfaceFormat.INVISIBLE)
              && StringUtils.startsWith(property.getName(), "Connector"))
      {
        SystemProperty sysProperty = createNewSystemProperty(property);
        systemProperties.add(sysProperty);
      }
    }
    return null;
  }

  private SystemProperty createNewSystemProperty(ISystemProperty property)
  {
    SystemProperty sysProperty = new SystemProperty();
    sysProperty.setName(property.getName());
    sysProperty.setDefaultValue(property.getDefaultValue());
    sysProperty.setDescription(property.getDescription());
    sysProperty.setValue(property.getValue());
    sysProperty.setUserInterfaceFormat(property.getUserInterfaceFormat());
    if (property.getUserInterfaceFormat().equals(UserInterfaceFormat.ENUMERATION))
    {
      sysProperty.setEnumerationValues(Arrays.asList(property.getEnumerationValues()));
    }
    return sysProperty;
  }

  public List<SystemProperty> getWebServerSystemProperties()
  {
    return systemProperties;
  }

  public void saveWebServerSystemProperties()
  {
    for (SystemProperty systemProperty : systemProperties)
    {
      setProperty(systemProperty.getName(), systemProperty.getValue());
    }
  }

  private boolean saveClusterNodes()
  {
    AdministratorManager adminManager = getAdministratorManager();
    if (!adminManager.isConnected())
    {
      return false;
    }
    return adminManager.storeClusterNodes();
  }

  public ConnectionState testConnection()
  {
    updateDbConfig();
    tester.reset();
    connectionListener.gotResult = false;
    tester.configurationChanged();
    try
    {
      WaitUtil.await(() -> connectionListener.gotResult, CONNETION_TEST_TIMEOUT, TimeUnit.SECONDS);
    }
    catch (TimeoutException ex)
    {
      String msg = "Could not connect to database within " + CONNETION_TEST_TIMEOUT + " Seconds";
      getConnectionInfo().updateConnectionStates(ConnectionState.CONNECTION_FAILED,
              new TimeoutException(msg),
              getConfigData().getProduct());
      return ConnectionState.CONNECTION_FAILED;
    }
    return tester.getConnectionState();
  }

  public void saveAll()
  {
    saveToYaml();

    if (!getAdministratorManager().isConnected())
    {
      UiModder.notConnected();
      return;
    }

    try
    {
      saveAllToDB();
      UiModder.savedAllToDatabase();
    }
    catch (Exception ex)
    {
      UiModder.allNotSaved(ex);
    }
    UiModder.restartHint();
  }

  private void saveToYaml()
  {
    try
    {
      saveSystemDb();
      saveWebServerSystemProperties();
      saveWebServerConfig();
      UiModder.yamlConfigSaved();
    }
    catch (Exception ex)
    {
      UiModder.yamlConfigNotSaved(ex);
    }
  }

  private void saveAllToDB() throws Exception
  {
    saveAdmins();
    if (LicenceUtil.isCluster())
    {
      saveClusterNodes();
    }
  }

  private class BlockingListener implements IConnectionListener
  {
    private boolean gotResult = false;

    @Override
    public void connectionStateChanged(ConnectionState newState)
    {
      Throwable connectionError = getSystemDb().getConnectionTester().getConnectionError();
      getConnectionInfo().updateConnectionStates(newState, connectionError, getConfigData().getProduct());
      if (newState != ConnectionState.CONNECTING)
      {
        gotResult = true;
      }
    }
  }
}