import 'package:bloc/bloc.dart';
import 'package:wishey/core/logger.dart';

class CustomBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.d(change.nextState);
  }
}
