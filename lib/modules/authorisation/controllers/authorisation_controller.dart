import 'package:get/get.dart';
import 'package:wishey_restart/services/firebase_service.dart';

enum FieldKey { email, password }

class AuthorisationController extends GetxController {
  AuthorisationController();

  RxMap authorisationFields = {}.obs;
  final Map<FieldKey, String> _fieldKeys = {
    FieldKey.email: 'Email',
    FieldKey.password: 'Password',
  };

  String getFieldHint({FieldKey fieldKey}) {
    return _fieldKeys[fieldKey];
  }

  bool _isInvalid({FieldKey fieldKey}) {
    final value = authorisationFields[fieldKey] as String;
    switch (fieldKey) {
      case FieldKey.email:
        return value != null && !value.isEmail;
      case FieldKey.password:
        return value != null && value.length < 6;
    }
    return true;
  }

  String getFieldError({FieldKey fieldKey}) {
    if (_isInvalid(fieldKey: fieldKey)) {
      return '${fieldKey.toString()} error'.tr;
    }
    return null;
  }

  Future<void> submitForm() async {
    final FirebaseService firebaseService = Get.find();
    if (await firebaseService.signIn(
        email: authorisationFields[FieldKey.email],
        password: authorisationFields[FieldKey.password])) {
      await Get.offNamed('/success');
    }
  }
}
