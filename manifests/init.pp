#
# @summary set up net-snmp-systemd-service-status
#
class net_snmp_systemd_service_status
(
  $my_require = Class['::snmpd::install'],
  $my_notify = Class['::snmpd::service'],
) 
{

  file { '/etc/snmp/systemd-service-status.py':
    ensure     => 'present',
    content    => template('net_snmp_systemd_service_status/systemd-service-status.py.erb'),
    owner      => root,
    group      => root,
    mode       => 0755,
    my_require => $require,
    my_notify  => $notify,
  }
}
