// Dart imports:
import 'dart:async';
import 'dart:convert';
import 'dart:io';

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import 'package:pokemon_test/config/constants/constants.dart';
import 'package:pokemon_test/config/utils/exceptions/exceptions.dart';
import 'package:pokemon_test/config/utils/utils.dart';
import 'package:pokemon_test/models/pokemon_model.dart';

abstract class PokemonService {
  Future<List<Pokemon>> getPokemons(int offset);
}

class PokemonServiceImpl extends PokemonService {
  final http.Client _httpClient;

  PokemonServiceImpl(this._httpClient);

  @override
  Future<List<Pokemon>> getPokemons(int offset) async {
    try {
      final basePokemonUrl =
          PokemonConstants.baseUrl.replaceAll('{offset}', '$offset');

      final getPokemonsUrl = Uri.parse(basePokemonUrl);
      final response = await _httpClient.get(getPokemonsUrl).timeout(
            PokemonConstants.pokemonDurationTimeout,
          );

      final jsonBody = jsonDecode(response.body) as Map<String, dynamic>;
      final pokemonList = PokemonUtil.generateListFromResponse(jsonBody)
          .map((pokemon) => Pokemon.fromJson(pokemon))
          .toList();

      return pokemonList;
    } on TimeoutException catch (error) {
      throw PokemonTimeoutException(error);
    } on SocketException catch (error) {
      throw PokemonSocketException(error);
    } on Error catch (error) {
      throw PokemonFetchException(error);
    }
  }
}
