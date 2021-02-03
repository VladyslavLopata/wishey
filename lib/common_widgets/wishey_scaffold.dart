import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WisheyScaffold extends StatelessWidget {
  final Widget child;
  final Widget floatingActionButton;

  const WisheyScaffold({
    Key key,
    this.floatingActionButton,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'.tr),
        centerTitle: true,
      ),
      body: child,
      floatingActionButton: floatingActionButton,
    );
  }
}
