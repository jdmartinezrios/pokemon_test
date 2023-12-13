// Project imports:
import 'package:pokemon_test/config/constants/constants.dart';

extension StringExtensions on String {
  String capitalize() {
    final firstCharacter = this[PokemonConstants.initialOffset].toUpperCase();
    final characterPosition = substring(PokemonConstants.capitalizePosition);
    return '$firstCharacter$characterPosition';
  }
}
