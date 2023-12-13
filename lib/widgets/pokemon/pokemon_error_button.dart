// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_test/config/config.dart';

class PokemonErrorButtonWidget extends StatelessWidget {
  final VoidCallback onTryAgain;
  const PokemonErrorButtonWidget({
    super.key,
    required this.onTryAgain,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: PokemonConfig.pockemonErrorButtonSize,
      child: FilledButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            PokemonConfig.pokemonPrimaryColor,
          ),
        ),
        onPressed: onTryAgain,
        child: const Text(
          'Try Again Now',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: PokemonConfig.pokemonMediumFontSize,
          ),
        ),
      ),
    );
  }
}
