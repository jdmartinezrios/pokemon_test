// Dart imports:
import 'dart:math' as math;

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_test/config/config.dart';
import 'package:pokemon_test/config/constants/constants.dart';

class PokemonPoketbellWidget extends StatelessWidget {
  const PokemonPoketbellWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: math.pi / PokemonConfig.pockeballRotation,
      child: Opacity(
        opacity: PokemonConfig.pockeballOpacity,
        child: Image.asset(
          PokemonConstants.pockeballImage,
          width: PokemonConfig.pockeballSize,
          height: PokemonConfig.pockeballSize,
        ),
      ),
    );
  }
}
