import 'package:get/get.dart';
import 'package:wishey_restart/modules/wish_maker/controllers/wish_maker_controller.dart';

class WishMakerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WishMakerController());
  }
}
