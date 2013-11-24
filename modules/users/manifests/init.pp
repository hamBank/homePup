#doco
class users {

  user { 'demo':
    ensure     => absent,
    uid        => '1000',
  }


}

