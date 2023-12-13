// Project imports:
import 'package:pokemon_test/config/constants/constants.dart';

class PokemonUtil {
  static List<Map<String, dynamic>> generateListFromResponse(
      Map<String, dynamic> response) {
    final listGenerated = List<Map<String, dynamic>>.from(
      response['results'],
    );
    return listGenerated;
  }

  static String generatePokemonNumber(int pokemonId) {
    return '$pokemonId'.padLeft(
      PokemonConstants.pokemonNumberPadLeft,
      '${PokemonConstants.pokemonNumberPadLeftToReplace}',
    );
  }
}
