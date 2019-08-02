class { 'onetimesecret':
  secret         => 'SomeHardToGuessRandomCharacters',
  redis_password => 'AnotherGoodPassword',
}
