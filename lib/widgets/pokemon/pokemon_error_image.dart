// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_test/config/config.dart';
import 'package:pokemon_test/config/constants/constants.dart';

class PokemonErrorImageWidget extends StatelessWidget {
  const PokemonErrorImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        PokemonConstants.pokemonErrorConnection,
        width: PokemonConfig.pockemonErrorImageWidth,
        height: PokemonConfig.pockemonErrorImageHeight,
      ),
    );
  }
}
