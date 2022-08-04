import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wishey/core/di/di.dart';
import 'package:wishey/core/widgets/loading_indicator.dart';

import 'cubit/wishlist_cubit.dart';
import 'wishlist_body.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    final cubit = injector<WishlistCubit>()..initialize(id);

    return BlocBuilder<WishlistCubit, WishlistState>(
      bloc: cubit,
      builder: (_, state) {
        return state.when(
          loading: () => const LoadingIndicator(),
          loaded: (wishes) => WishlistBody(wishes: wishes),
        );
      },
    );
  }
}
