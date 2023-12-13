// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_test/config/config.dart';
import 'package:pokemon_test/config/utils/utils.dart';

class PokemonNumberWidget extends StatelessWidget {
  final int number;
  const PokemonNumberWidget({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '#${PokemonUtil.generatePokemonNumber(number)}',
      style: TextStyle(
        fontSize: PokemonConfig.pockemonNumberSize,
        fontStyle: FontStyle.italic,
        color: PokemonConfig.pokemonWhiteColor.withOpacity(
          PokemonConfig.pockemonNumberOpacity,
        ),
      ),
    );
  }
}
