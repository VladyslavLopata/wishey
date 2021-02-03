import 'package:get/get.dart';
import 'package:wishey_restart/modules/authorisation/controllers/authorisation_controller.dart';

class AuthorisationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthorisationController());
  }
}
