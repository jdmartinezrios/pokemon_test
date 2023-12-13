// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

// Project imports:
import 'package:pokemon_test/config/constants/constants.dart';
import 'package:pokemon_test/config/utils/exceptions/exceptions.dart';
import 'package:pokemon_test/models/pokemon_model.dart';
import 'package:pokemon_test/models/pokemon_state_model.dart';
import 'package:pokemon_test/services/pokemon_service.dart';

final pokemonProvider =
    StateNotifierProvider<PokemonProvider, PokemonState>((ref) {
  return PokemonProvider(PokemonServiceImpl(http.Client()));
});

class PokemonProvider extends StateNotifier<PokemonState> {
  final PokemonService _pokemonService;
  int _currentPokemonOffset = PokemonConstants.initialOffset;

  PokemonProvider(this._pokemonService) : super(const PokemonState());

  Future<void> getPokemons() async {
    try {
      _dispatchGetPokemons();
      final pokemons = await _fetchPokemons();
      _onGetPokemonsSuccessfully(pokemons);
    } on PokemonFetchException {
      _onGetPokemonsFailed();
    } on PokemonSocketException {
      _onGetPokemonsFailureConnection();
    } on PokemonTimeoutException {
      _onGetPokemonsFailureConnection();
    }
  }

  Future<List<Pokemon>> _fetchPokemons() {
    return _pokemonService.getPokemons(state.offset);
  }

  void _dispatchGetPokemons() {
    state = state.copyWith(
      status: PokemonStatus.loading,
    );
  }

  void _onGetPokemonsFailed() {
    state = state.copyWith(
      status: PokemonStatus.failure,
    );
  }

  void _onGetPokemonsSuccessfully(List<Pokemon> pokemons) {
    state = state.copyWith(
      status: PokemonStatus.success,
      pokemons: [...state.pokemons, ...pokemons],
      offset: _currentPokemonOffset += state.offset,
    );
  }

  void _onGetPokemonsFailureConnection() {
    state = state.copyWith(
      pokemons: <Pokemon>[],
      status: PokemonStatus.errorConnection,
      offset: PokemonConstants.initialOffset,
    );
  }
}
