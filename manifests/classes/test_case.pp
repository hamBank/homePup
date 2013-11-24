
# Create "/tmp/testfile" if it doesn't exist.
class test_class {
  file { "/tmp/testfile":
    ensure => present,
    mode   => 652,
    owner  => anto,
    group  => root
  }
}


