// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_test/config/config.dart';
import 'package:pokemon_test/config/constants/constants.dart';
import 'package:pokemon_test/models/pokemon_model.dart';
import 'package:pokemon_test/widgets/pokemon/pokemon_image_widget.dart';
import 'package:pokemon_test/widgets/pokemon/pokemon_number_widget.dart';
import 'package:pokemon_test/widgets/pokemon/pokemon_poketball_widget.dart';
import 'package:pokemon_test/widgets/pokemon/pokemon_title_widget.dart';

class PokemonItemWidget extends StatelessWidget {
  final int pokemonId;
  final Pokemon pokemon;
  const PokemonItemWidget({
    super.key,
    required this.pokemon,
    required this.pokemonId,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: PokemonConfig.pockemonListSeparator,
      ),
      color: PokemonConfig.pokemonPrimaryColor,
      child: SizedBox(
        height: PokemonConfig.pokemonCardSize,
        child: Stack(
          children: <Widget>[
            const Positioned(
              left: PokemonConfig.pockeballPosition,
              top: PokemonConfig.pockeballPosition,
              child: PokemonPoketbellWidget(),
            ),
            Positioned(
              left: PokemonConfig.pockemonImagePosition,
              top: PokemonConfig.pockemonImagePosition,
              child: PokemonImageWidget(
                imageUrl: PokemonConstants.imageBaseUrl.replaceAll(
                  '{pokemonId}',
                  '$pokemonId',
                ),
              ),
            ),
            PokemonTitleWidget(
              title: pokemon.name,
            ),
            Positioned(
              right: PokemonConfig.pockemonNumberPosition,
              bottom: -PokemonConfig.pockemonNumberPosition,
              child: PokemonNumberWidget(
                number: pokemonId,
              ),
            )
          ],
        ),
      ),
    );
  }
}
