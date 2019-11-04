package com.axonivy.engine.config.ui.unit.test;

import ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration;
import ch.ivyteam.db.jdbc.DatabaseUtil;
import ch.ivyteam.ivy.Advisor;
import ch.ivyteam.ivy.persistence.db.DatabasePersistencyServiceFactory;
import ch.ivyteam.ivy.server.IServer;
import ch.ivyteam.ivy.server.ServerFactory;
import ch.ivyteam.job.ConsoleJobExecutor;
import ch.ivyteam.job.JobCompositeAction;
import ch.ivyteam.job.JobException;

@SuppressWarnings("restriction")
public class InMemoryEngineController
{
  /** logger: whitelisted for <b>com.axonivy.ivy.ci:project-build-plugin</b> */
  private static final String MEMORY_DB_NAME = "ivyConfigurationSystemDatabase";
  private IServer engine;
  private DatabaseConnectionConfiguration dbConnConfig;

  public void start() throws Exception
  {
    Advisor.getAdvisor().setServer(true);
    dbConnConfig = createMemorySystemDatabase(MEMORY_DB_NAME);
    engine = ServerFactory.createUltralightServer(dbConnConfig);
    engine.start(null);
  }

  private DatabaseConnectionConfiguration createMemorySystemDatabase(String dbName) throws JobException
  {
    DatabaseConnectionConfiguration config = new DatabaseConnectionConfiguration("jdbc:hsqldb:mem:" + dbName, "org.hsqldb.jdbcDriver");
    JobCompositeAction dbCreatorJob = DatabasePersistencyServiceFactory.createDatabaseCreator(config).createDatabaseCreationJob(null);
    createExecutor().execute(dbCreatorJob);
    return config;
  }

  private ConsoleJobExecutor createExecutor()
  {
    return new ConsoleJobExecutor(null, System.err);
  }

  public void stop()
  {
    try
    {
      if (engine != null && engine.isRunning())
      {
        engine.stop(null);
      }
      if (dbConnConfig != null)
      {
        DatabaseUtil.dropDatabase(MEMORY_DB_NAME, dbConnConfig);
      }
    }
    catch (Throwable th)
    {
      th.printStackTrace();
    }
  }

}