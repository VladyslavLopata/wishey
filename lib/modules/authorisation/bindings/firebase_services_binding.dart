import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:wishey_restart/services/firebase_service.dart';

class FirebaseServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirebaseService(FirebaseAuth.instance));
  }
}
