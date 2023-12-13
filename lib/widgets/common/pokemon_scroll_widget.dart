// Flutter imports:
import 'package:flutter/material.dart';

class PokemonScrollWidget extends StatefulWidget {
  final BoxScrollView child;
  final VoidCallback onScrollBottom;
  const PokemonScrollWidget({
    super.key,
    required this.child,
    required this.onScrollBottom,
  });

  @override
  State<PokemonScrollWidget> createState() => _PokemonScrollWidgetState();
}

class _PokemonScrollWidgetState extends State<PokemonScrollWidget> {
  @override
  void initState() {
    widget.child.controller!.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    if (isBottom) {
      widget.onScrollBottom();
    }
  }

  bool get isBottom {
    if (!widget.child.controller!.hasClients) return false;
    final maxScroll = widget.child.controller!.position.maxScrollExtent;
    final currentScroll = widget.child.controller!.position.pixels;
    return currentScroll == maxScroll;
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    widget.child.controller!
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }
}
