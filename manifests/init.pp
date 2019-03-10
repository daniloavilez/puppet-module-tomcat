class tomcat(
    $user                = $tomcat::params::user,
    $group               = $tomcat::params::group,
    $config_path         = $tomcat::params::config_path,
    $packages            = $tomcat::params::packages,
    $service_name        = $tomcat::params::service_name,
    $service_state       = $tomcat::params::service_state,
    $shutdown_wait       = $tomcat::params::shutdown_wait,
    $catalina_pid        = $tomcat::params::catalina_pid,
    $tomcat_cfg_loaded   = $tomcat::params::tomcat_cfg_loaded,
    $java_home           = $tomcat::params::java_home,
    $catalina_base       = $tomcat::params::catalina_base,
    $jasper_home         = $tomcat::params::jasper_home,
    $catalina_tmpdir     = $tomcat::params::catalina_tmpdir,
    $security_manager    = $tomcat::params::security_manager,
    $shutdown_verbose    = $tomcat::params::shutdown_verbose,
    $catalina_home       = $tomcat::params::catalina_home,
) inherits tomcat::params {


    
    include java::install
    include tomcat::install
    include tomcat::config
    include tomcat::service

}
