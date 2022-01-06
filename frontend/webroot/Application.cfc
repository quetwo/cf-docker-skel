component
{
    this.name = "Sample_Application";
    this.datasource = {
        class: 'com.mysql.cj.jdbc.Driver'
        , bundleName: 'com.mysql.cj'
        , bundleVersion: '8.0.19'
        , connectionString: 'jdbc:mysql://db:3306/' & server.system.environment.MYSQL_DATABASE & '?characterEncoding=UTF-8&serverTimezone=Etc/UTC&autoReconnect=true&maxReconnects=3&allowMultiQueries=true'
        , username: server.system.environment.MYSQL_USER
        , password: server.system.environment.MYSQL_PASSWORD
        , connectionLimit:100 // default:-1
        , alwaysSetTimeout:true // default: false
        , validate:false // default: false
    };


}
