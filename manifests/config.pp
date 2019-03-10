# Class: tomcat::config
#
#
class tomcat::config inherits tomcat {
    # resources
    file { $::tomcat::config_path:
        # source => 'puppet:///modules/tomcat/tomcat.conf',
        content => template('tomcat/tomcat.conf.erb'),
        owner  => $::tomcat::user,
        group  => $::tomcat::group,
        mode   => '0644',
        notify => Service[$::tomcat::service_name],
    }
}