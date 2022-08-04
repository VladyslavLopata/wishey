import 'package:flutter/material.dart';
import 'package:wishey/core/responsive_extensions.dart';

class WishGrid extends StatelessWidget {
  const WishGrid({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.platform(
          mobile: () => 2,
          desktop: () => 4,
        ),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      children: children,
    );
  }
}
