import 'package:flutter/material.dart';
import 'package:wishey_restart/modules/authorisation/controllers/authorisation_controller.dart';
import 'package:get/get.dart';
import 'package:wishey_restart/common_widgets/wishey_scaffold.dart';

import 'custom_auth_field.dart';

class AuthorisationView extends StatelessWidget {
  SizedBox _getFieldWrap(FieldKey key, bool isLast) => SizedBox(
        height: 60,
        child: CustomAuthField(
          isLast: isLast,
          textEditingController: TextEditingController(),
          fieldKey: key,
        ),
      );

  Iterable<Widget> _buildFields() {
    return FieldKey.values
        .take(FieldKey.values.length - 1)
        .map((e) => _getFieldWrap(e, false))
        .followedBy([_getFieldWrap(FieldKey.values.last, true)]);
  }

  @override
  Widget build(BuildContext context) {
    return WisheyScaffold(
      child: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: Get.size.width / 1.5,
              maxHeight: Get.size.height -
                  MediaQuery.of(context).viewInsets.bottom -
                  MediaQuery.of(context).viewInsets.top,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 150,
                  child: Text('title'.tr,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.headline5),
                ),
                ..._buildFields(),
                SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () async {
                        AuthorisationController controller = Get.find();
                        await controller.submitForm();
                      },
                      child: Row(
                        children: [
                          Text('submit'.tr),
                          const Icon(Icons.chevron_right),
                        ],
                      ),
                    )),
                Row(
                  children: [
                    Text(
                      'no_account'.tr,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('register'.tr),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
