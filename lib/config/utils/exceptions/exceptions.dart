class PokemonException implements Exception {
  final dynamic error;
  PokemonException(this.error);

  message() {
    return 'PokemonException: $error';
  }
}

class PokemonFetchException extends PokemonException {
  PokemonFetchException(super.error);

  @override
  message() {
    return 'Error fetching pokemons: $error';
  }
}

class PokemonSocketException extends PokemonException {
  PokemonSocketException(super.error);

  @override
  message() {
    return 'Error internet connection failed: $error';
  }
}

class PokemonTimeoutException extends PokemonException {
  PokemonTimeoutException(super.error);

  @override
  message() {
    return 'Error fetch pokemons timeout: $error';
  }
}
