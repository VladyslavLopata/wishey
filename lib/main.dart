import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wishey_restart/modules/authorisation/bindings/authorisation_binding.dart';
import 'package:wishey_restart/modules/authorisation/bindings/firebase_services_binding.dart';
import 'package:wishey_restart/modules/home/bindings/home_bindings.dart';
import 'package:wishey_restart/modules/wish_maker/bindings/wish_maker_binding.dart';
import 'package:wishey_restart/services/localization/localization_service.dart';
import 'package:wishey_restart/modules/authorisation/views/authorisation_view.dart';
import 'package:wishey_restart/modules/home/views/home_view.dart';
import 'package:wishey_restart/modules/wish_maker/views/wish_maker_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Container(
              child: Text('Something went wring!!!'),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Wishey();
          }
          return CircularProgressIndicator();
        });
  }
}

class Wishey extends StatelessWidget {
  Future<String> generateInitialRoute() async {
    final User currentUser = await FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      return '/home';
    }
    return '/auth';
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: generateInitialRoute(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return GetMaterialApp(
            title: 'Wishey',
            locale: LocalizationServise.locale,
            translations: LocalizationServise(),
            initialRoute: snapshot.data,
            getPages: [
              GetPage(
                name: '/auth',
                page: () => AuthorisationView(),
                bindings: [
                  AuthorisationBinding(),
                  FirebaseServicesBinding(),
                ],
              ),
              GetPage(
                name: '/home',
                page: () => HomeView(),
                binding: HomeBinding(),
              ),
              GetPage(
                name: '/wish_maker',
                page: () => WishMakerView(),
                binding: WishMakerBinding(),
              ),
            ],
          );
        }
        if (snapshot.hasError) {
          return Text('Authorisation went wrong!');
        }
        return CircularProgressIndicator();
      },
    );
  }
}
