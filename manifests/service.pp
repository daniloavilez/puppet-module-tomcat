# Class: tomcat::service
#
#
class tomcat::service inherits tomcat {
    # resources
    service { "${::tomcat::service_name}":
        ensure     => $::tomcat::service_state,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        require => Package[ $::tomcat::packages ]
        # pattern    => 'tomcat',
    }
}