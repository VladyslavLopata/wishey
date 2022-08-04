import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wishey/app.dart';
import 'package:wishey/core/custom_bloc_observer.dart';
import 'package:wishey/core/di/di.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      configureDependencies();
      runApp(const App());
    },
    blocObserver: CustomBlocObserver(),
  );
}
