# Class: tomcat::params
#
#
class tomcat::params {
    
    $user = 'tomcat'
    $group = 'tomcat'
    $config_path = '/etc/tomcat/tomcat.conf'
    $packages = [ 'tomcat', 'tomcat-webapps' ]
    $service_name = 'tomcat'
    $service_state = running
    $shutdown_wait = '30'
    $catalina_pid = "/var/run/tomcat.pid"
    $tomcat_cfg_loaded = "1"
    $java_home = "/usr/lib/jvm/jre"
    $catalina_base = "/usr/share/tomcat"
    $jasper_home = "/usr/share/tomcat"
    $catalina_tmpdir = "/var/cache/tomcat/temp"
    $security_manager = "false"
    $shutdown_verbose = "false"
    $catalina_home = "/usr/share/tomcat"
    $deploy_path = "/var/lib/tomcat/webapps"

}