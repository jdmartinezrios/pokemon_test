// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_test/config/config.dart';
import 'package:pokemon_test/widgets/pokemon/pokemon_error_button.dart';
import 'package:pokemon_test/widgets/pokemon/pokemon_error_header.dart';
import 'package:pokemon_test/widgets/pokemon/pokemon_error_image.dart';
import 'package:pokemon_test/widgets/pokemon/pokemon_error_layout.dart';

class PokemonErrorScreen extends StatefulWidget {
  final VoidCallback onTryAgain;
  const PokemonErrorScreen({
    super.key,
    required this.onTryAgain,
  });

  @override
  State<PokemonErrorScreen> createState() => _PokemonErrorScreenState();
}

class _PokemonErrorScreenState extends State<PokemonErrorScreen> {
  @override
  Widget build(BuildContext context) {
    const pokemonErrorSeparator = SizedBox(
      height: PokemonConfig.pockemonFullSeparator,
    );

    return Scaffold(
      body: PokemonErrorLayout(
        children: <Widget>[
          pokemonErrorSeparator,
          const PokemonErrorHeaderWidget(),
          const Expanded(
            child: SizedBox(),
          ),
          PokemonErrorButtonWidget(
            onTryAgain: widget.onTryAgain,
          ),
          const Expanded(
            child: SizedBox(),
          ),
          const PokemonErrorImageWidget(),
        ],
      ),
    );
  }
}
