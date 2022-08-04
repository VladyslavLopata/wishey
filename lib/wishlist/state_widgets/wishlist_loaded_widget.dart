import 'package:flutter/material.dart';
import 'package:wishey/core/widgets/item_box.dart';
import 'package:wishey/core/widgets/wish_grid.dart';
import 'package:wishey/models/wishlist.dart';

class WishlistLoadedWidget extends StatelessWidget {
  const WishlistLoadedWidget({
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
              child: ItemBox(
                key: Key(e.title),
                title: e.title,
              ),
            ),
          )
          .toList(),
    );
  }
}
