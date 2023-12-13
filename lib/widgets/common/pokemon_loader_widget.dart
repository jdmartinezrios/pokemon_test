// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_test/config/config.dart';
import 'package:pokemon_test/config/constants/constants.dart';

class PokemonLoaderWidget extends StatelessWidget {
  const PokemonLoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: PokemonConfig.pokemonWhiteColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: PokemonConfig.pockemonLoaderSeparator,
          ),
          Image.asset(
            PokemonConstants.pokemonLoader,
            width: PokemonConfig.pockemonLoaderWidth,
            height: PokemonConfig.pockemonLoaderHeight,
          ),
          const Text('Loading…'),
          const SizedBox(
            height: PokemonConfig.pockemonLoaderSeparator,
          ),
        ],
      ),
    );
  }
}
