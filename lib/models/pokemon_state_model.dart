// Project imports:
import 'package:pokemon_test/config/constants/constants.dart';
import 'package:pokemon_test/models/pokemon_model.dart';

enum PokemonStatus {
  initial,
  loading,
  success,
  failure,
  errorConnection,
}

class PokemonState {
  final int offset;
  final PokemonStatus status;
  final List<Pokemon> pokemons;

  const PokemonState({
    this.pokemons = const <Pokemon>[],
    this.status = PokemonStatus.initial,
    this.offset = PokemonConstants.initialOffset,
  });

  PokemonState copyWith({
    int? offset,
    PokemonStatus? status,
    List<Pokemon>? pokemons,
  }) {
    return PokemonState(
      status: status ?? this.status,
      offset: offset ?? this.offset,
      pokemons: pokemons ?? this.pokemons,
    );
  }

  @override
  String toString() => 'status: $status, pokemons: $pokemons';
}
