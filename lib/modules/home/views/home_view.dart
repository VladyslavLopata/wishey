import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wishey_restart/modules/home/controllers/home_controller.dart';
import 'package:wishey_restart/common_widgets/wishey_scaffold.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return WisheyScaffold(
      floatingActionButton: Builder(builder: (context) {
        if (controller.wishList.isEmpty) {
          return Container();
        }
        return FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        );
      }),
      child: Builder(
        builder: (context) {
          if (controller.wishList.isEmpty) {
            return EmptyWishlist();
          }
          return Container();
        },
      ),
    );
  }
}

class EmptyWishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Spacer(
            flex: 6,
          ),
          Expanded(
            flex: 3,
            child: Text(
              'no_wishes'.tr,
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed('/wish_maker');
              },
              child: Text('make_wish'.tr),
            ),
          ),
          Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }
}
