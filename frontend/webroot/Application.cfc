component
{

    // This is the application name, and basic settings.
    this.name = "Sample_Application";
    this.sessionmanagement = true;
    this.sessiontimeout = createTimespan(0,0,30,0);   // 0 days, 0 hours, 30 minutes, 0 seconds
    this.applicationtimeout = createTimespan(0, 12, 0, 0);  // 0 days, 12 hours, 0 minutes, 0 seconds

    // This sets up the default database.  It can be used by your CFQuery or ORM connections.
    this.datasource = {
        class: 'com.mysql.cj.jdbc.Driver'
        , bundleName: 'com.mysql.cj'
        , bundleVersion: '9.6.0'
        , connectionString: 'jdbc:mysql://db:3306/' & server.system.environment.MYSQL_DATABASE & '?characterEncoding=UTF-8&serverTimezone=Etc/UTC&autoReconnect=true&maxReconnects=3&allowMultiQueries=true'
        , username: server.system.environment.MYSQL_USER
        , password: server.system.environment.MYSQL_PASSWORD
        , connectionLimit:100 // default:-1
        , alwaysSetTimeout:true // default: false
        , validate:false // default: false
    };

}
