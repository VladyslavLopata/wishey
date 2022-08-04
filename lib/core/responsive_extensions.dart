import 'package:flutter/cupertino.dart';

const _breakpoint = 1024;

extension ResponsiveExtensions on BuildContext {
  T platform<T>({
    required T Function() mobile,
    T Function()? desktop,
  }) {
    final width = MediaQuery.of(this).size.width;

    if (width < _breakpoint) {
      return mobile();
    }
    return desktop?.call() ?? mobile();
  }
}
