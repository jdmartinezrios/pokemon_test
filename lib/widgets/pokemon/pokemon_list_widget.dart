// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:pokemon_test/config/config.dart';
import 'package:pokemon_test/config/constants/constants.dart';
import 'package:pokemon_test/models/pokemon_model.dart';
import 'package:pokemon_test/widgets/common/pokemon_loader_widget.dart';
import 'package:pokemon_test/widgets/common/pokemon_scroll_widget.dart';
import 'package:pokemon_test/widgets/pokemon/pokemon_item_widget.dart';

class PokemonListWidget extends StatefulWidget {
  final List<Pokemon> pokemons;
  final VoidCallback onPaginate;

  const PokemonListWidget({
    super.key,
    required this.pokemons,
    required this.onPaginate,
  });

  @override
  State<PokemonListWidget> createState() => _PokemonListWidgetState();
}

class _PokemonListWidgetState extends State<PokemonListWidget> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return PokemonScrollWidget(
      onScrollBottom: widget.onPaginate,
      child: ListView.separated(
        controller: scrollController,
        itemCount: widget.pokemons.length + PokemonConstants.totalIncrement,
        itemBuilder: (BuildContext context, int index) {
          if (index >= widget.pokemons.length) {
            return const PokemonLoaderWidget();
          }
          return PokemonItemWidget(
            pokemonId: index + PokemonConstants.totalIncrement,
            pokemon: widget.pokemons[index],
          );
        },
        separatorBuilder: (BuildContext contextm, int index) {
          return const SizedBox(
            height: PokemonConfig.pockemonListSeparator,
          );
        },
      ),
    );
  }
}
