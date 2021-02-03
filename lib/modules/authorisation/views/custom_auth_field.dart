import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wishey_restart/modules/authorisation/controllers/authorisation_controller.dart';

class CustomAuthField extends GetView<AuthorisationController> {
  final FieldKey fieldKey;
  final TextEditingController textEditingController;
  final bool isLast;

  CustomAuthField({
    Key key,
    @required this.fieldKey,
    this.textEditingController,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        controller: textEditingController,
        textInputAction: isLast ? TextInputAction.done : TextInputAction.next,
        obscureText: fieldKey == FieldKey.password,
        onChanged: (String value) =>
            controller.authorisationFields[fieldKey] = value,
        onEditingComplete: isLast ? null : FocusScope.of(context).nextFocus,
        onSubmitted: (_) => controller.submitForm(),
        decoration: InputDecoration(
          isDense: true,
          hintText: controller.getFieldHint(fieldKey: fieldKey),
          errorText: controller.getFieldError(fieldKey: fieldKey),
        ),
      ),
    );
  }
}
