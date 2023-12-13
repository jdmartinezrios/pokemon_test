// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:pokemon_test/models/pokemon_state_model.dart';
import 'package:pokemon_test/providers/pokemon_provider.dart';
import 'package:pokemon_test/screens/pokemon_error_screen.dart';
import 'package:pokemon_test/widgets/pokemon/pokemon_list_widget.dart';

class PokemonHomeScreen extends ConsumerStatefulWidget {
  const PokemonHomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PokemonScreenState();
}

class _PokemonScreenState extends ConsumerState<PokemonHomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => getPokemons(),
    );
    super.initState();
  }

  void getPokemons() {
    ref.read(pokemonProvider.notifier).getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    final status = ref.watch(pokemonProvider).status;
    final pokemons = ref.watch(pokemonProvider).pokemons;

    if (status == PokemonStatus.errorConnection) {
      return PokemonErrorScreen(
        onTryAgain: () => getPokemons(),
      );
    } else {
      return Scaffold(
        body: PokemonListWidget(
          pokemons: pokemons,
          onPaginate: () => getPokemons(),
        ),
      );
    }
  }
}
