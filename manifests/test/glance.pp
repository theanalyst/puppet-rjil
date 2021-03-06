class rjil::test::glance(
  $api_address      = '127.0.0.1',
  $registry_address = '127.0.0.1',
  $ssl              = false,
) {

  include openstack_extras::auth_file

  include rjil::test::base

  ensure_resource('package', 'python-glanceclient')

  file { "/usr/lib/jiocloud/tests/glance.sh":
    content => template('rjil/tests/glance-api.sh.erb'),
    owner  => 'root',
    group  => 'root',
    mode   => '755',
  }

  file { '/usr/lib/jiocloud/tests/glance-api.sh':
    ensure => absent,
  }

  file { "/usr/lib/jiocloud/tests/glance-registry.sh":
    source => "puppet:///modules/rjil/tests/glance-registry.sh",
    owner  => 'root',
    group  => 'root',
    mode   => '755',
  }

}
