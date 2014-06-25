class component::example {
  anchor { 'component::example::begin': } ->
  class { '::example': }                  ->
  anchor { 'component::example::end': }

  Example::Test {
    require => Class['::example'],
    before  => Anchor['component::example::end']
  }

  example::test { 'One':
  }

  example::test { 'Two':
  }
}
