#doco here
class cacti {

package { 'cacti':
    ensure => installed,
}

package { 'cacti-spine':
    ensure => absent,
}

}


