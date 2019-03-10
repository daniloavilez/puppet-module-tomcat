# Define: tomcat::deploy
# Parameters:
# 
#
define tomcat::deploy (
    $deploy_path = $::tomcat::params::deploy_path,
    $deploy_url,
    $checksum = 'md5',
    $checksum_value,
) {
    file { "${deploy_path}/${name}.war":
        ensure => file,
        source => "${deploy_url}",
        owner  => $::tomcat::user,
        group  => $::tomcat::group,
        checksum => "${checksum}",
        checksum_value => "${checksum_value}",
        notify => Exec['purge_context'],
    }


    exec { 'purge_context':
        command => "rm -rf ${deploy_path}/${name}",
        path => [ '/bin', '/usr/bin', '/usr/sbin' ],
        refreshonly => true,
        notify => Service[$::tomcat::service_name]
    }
}