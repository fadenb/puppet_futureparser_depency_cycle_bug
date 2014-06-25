define example::test {
  include example

  Class['example'] -> Example::Test[$name]

  notify{ "example::test: ${name}": } ->
  file { "/tmp/foobar-${name}":
    ensure  => present,
    content => 'foo',
  }
}
