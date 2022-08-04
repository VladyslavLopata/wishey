import 'package:flutter/material.dart';

class WishlistLoadingWidget extends StatelessWidget {
  const WishlistLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
