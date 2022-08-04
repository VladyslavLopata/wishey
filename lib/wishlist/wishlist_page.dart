import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wishey/wishlist/state_widgets/wishlist_loaded_widget.dart';
import 'package:wishey/wishlist/state_widgets/wishlist_loading_widget.dart';
import 'package:wishey/wishlist/wishlist_controller.dart';
import 'package:wishey/wishlist/wishlist_state.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WishlistController(context.read())..initialize(id),
      builder: (context, child) {
        final controller = context.watch<WishlistController>();

        final state = controller.state;

        if (state is WishlistLoading) {
          return const WishlistLoadingWidget();
        }

        if (state is WishlistLoaded) {
          return WishlistLoadedWidget(
            wishes: state.wishes,
          );
        }

        return const SizedBox();
      },
    );
  }
}
