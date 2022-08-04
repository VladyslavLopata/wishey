import 'package:flutter/material.dart';

class ItemBox extends StatelessWidget {
  const ItemBox({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.orange,
      ),
      child: Center(
        child: Text(
          title,
        ),
      ),
    );
  }
}
