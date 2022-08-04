import 'package:flutter/material.dart';
import 'package:wishey/core/widgets/item_box.dart';
import 'package:wishey/core/widgets/wish_grid.dart';
import 'package:wishey/models/wishlist.dart';

class WishlistBody extends StatelessWidget {
  const WishlistBody({
    super.key,
    required this.wishes,
  });

  final List<Wish> wishes;

  @override
  Widget build(BuildContext context) {
    return WishGrid(
      children: wishes
          .map(
            (e) => InkWell(
              key: Key(e.title),
              child: ItemBox(
                title: e.title,
              ),
            ),
          )
          .toList(),
    );
  }
}
