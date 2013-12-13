# == Class: rsyslog::install
#
# This class makes sure that the required packages are installed
#
# === Parameters
#
# === Variables
#
# === Examples
#
#  class { 'rsyslog::install': }
#
class rsyslog::install {
  $packages = [ $rsyslog::rsyslog_package_name, $rsyslog::relp_package_name]
  ensure_resource(package,$packages,{ ensure => $rsyslog::package_status } )
}
