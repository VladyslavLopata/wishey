import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wishey/home/home_controller.dart';
import 'package:wishey/home/home_state.dart';
import 'package:wishey/home/state_widgets/home_loaded_widget.dart';
import 'package:wishey/home/state_widgets/home_loading_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeController(context.read()),
      builder: (context, _) {
        final controller = context.watch<HomeController>();

        final state = controller.state;

        if (state is HomeLoading) {
          return const HomeLoadingWidget();
        }

        if (state is HomeLoaded) {
          return HomeLoadedWidget(wishGroups: state.wishGroups);
        }

        return const SizedBox();
      },
    );
  }
}
