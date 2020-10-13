component
{
    this.name = "Sample_Application";
    this.datasource =
    {
        class: 'com.mysql.cj.jdbc.Driver'
        , bundleName: 'com.mysql.cj'
        , bundleVersion: '8.0.19'
        , connectionString: 'jdbc:mysql://db:3306/skel?characterEncoding=UTF-8&serverTimezone=Etc/UTC&maxReconnects=3'
        , username: 'root'
        , password: "encrypted:11f7109e0015ddc5ed84bb843f5454185b134a37669a7b53eec39dc448437758"
    };
}
