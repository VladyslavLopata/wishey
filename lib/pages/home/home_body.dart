import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wishey/core/widgets/item_box.dart';
import 'package:wishey/core/widgets/wish_grid.dart';
import 'package:wishey/models/wishlist.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.wishGroups,
  });

  final List<WishGroup> wishGroups;

  @override
  Widget build(BuildContext context) {
    return WishGrid(
      children: wishGroups
          .map(
            (wishGroup) => InkWell(
              onTap: () => context.goNamed('wish', params: {'id': wishGroup.id}),
              child: ItemBox(
                key: Key(wishGroup.title),
                title: wishGroup.title,
              ),
            ),
          )
          .toList(),
    );
  }
}
