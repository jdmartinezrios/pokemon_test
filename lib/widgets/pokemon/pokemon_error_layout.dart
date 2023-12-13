// Flutter imports:
import 'package:flutter/material.dart';

class PokemonErrorLayout extends StatelessWidget {
  final List<Widget> children;
  const PokemonErrorLayout({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        BuildContext context,
        BoxConstraints constraints,
      ) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: constraints.maxWidth,
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: children,
              ),
            ),
          ),
        );
      },
    );
  }
}
