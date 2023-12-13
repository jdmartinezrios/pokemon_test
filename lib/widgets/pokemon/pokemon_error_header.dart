// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_test/config/config.dart';

class PokemonErrorHeaderWidget extends StatelessWidget {
  const PokemonErrorHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(
          PokemonConfig.pockemonErrorPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Something went wrong',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: PokemonConfig.pokemonTextColor,
                fontSize: PokemonConfig.pokemonLargeFontSize,
              ),
            ),
            SizedBox(
              height: PokemonConfig.pockemonErrorSeparator,
            ),
            Text(
              'please try again later…',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: PokemonConfig.pokemonTextColor,
                fontSize: PokemonConfig.pokemonMediumFontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
