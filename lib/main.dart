// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:pokemon_test/config/config.dart';
import 'package:pokemon_test/screens/pokemon_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon test',
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(
          seedColor: PokemonConfig.pokemonPrimaryColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const ProviderScope(
        child: PokemonHomeScreen(),
      ),
    );
  }
}
