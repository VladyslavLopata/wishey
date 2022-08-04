import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wishey/core/di/di.dart';
import 'package:wishey/core/widgets/loading_indicator.dart';

import 'cubit/home_cubit.dart';
import 'home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = injector<HomeCubit>()..initialize();

    return BlocProvider.value(
      value: cubit,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) => state.when(
          loading: () => const LoadingIndicator(),
          loaded: (wishGroups) => HomeBody(wishGroups: wishGroups),
        ),
      ),
    );
  }
}
