// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';

// Project imports:
import 'package:pokemon_test/config/config.dart';

class PokemonImageWidget extends StatelessWidget {
  final String imageUrl;
  const PokemonImageWidget({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: PokemonConfig.pockemonImageSize,
      width: PokemonConfig.pockemonImageSize,
    );
  }
}
