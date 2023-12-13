// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_test/config/config.dart';
import 'package:pokemon_test/config/utils/extensions/extensions.dart';

class PokemonTitleWidget extends StatelessWidget {
  final String title;
  const PokemonTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: PokemonConfig.pokemonTitleVerticalPadding,
        horizontal: PokemonConfig.pokemonTitleHorizontalPadding,
      ),
      child: Text(
        title.capitalize(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: PokemonConfig.pokemonWhiteColor,
          fontSize: PokemonConfig.pokemonTitleFontSize,
        ),
      ),
    );
  }
}
