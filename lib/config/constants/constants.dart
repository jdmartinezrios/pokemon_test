class PokemonConstants {
  // Base url params constants
  static const int limit = 10;
  static const int initialOffset = 0;

  // Generic http constants
  static const pokemonTimeout = 5000;
  static const pokemonDurationTimeout = Duration(
    milliseconds: pokemonTimeout,
  );

  // Generic url resources constants
  static const String baseUrl =
      'https://pokeapi.co/api/v2/pokemon?limit=$limit&offset={offset}';
  static const String imageBaseUrl =
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/{pokemonId}.png';

  // Generic extensions constants
  static const int totalIncrement = 1;
  static const int capitalizePosition = 1;

  // Generic utils constants
  static const int pokemonNumberPadLeft = 3;
  static const int pokemonNumberPadLeftToReplace = 0;

  // Image assets constants
  static const String pokemonLoader = 'assets/img/loading.gif';
  static const String pockeballImage = 'assets/img/pokeball.png';
  static const String pokemonErrorConnection = 'assets/img/pokachu.png';
}
