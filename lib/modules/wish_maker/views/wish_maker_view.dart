import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wishey_restart/modules/wish_maker/controllers/wish_maker_controller.dart';
import 'package:wishey_restart/common_widgets/wishey_scaffold.dart';

class WishMakerView extends GetView<WishMakerController> {
  Iterable<Widget> _buildInputFields() {
    return controller.fields.skip(2).map<Widget>((field) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              labelText: controller.getFieldName(field),
            ),
            onChanged: (String changedValue) {
              controller.updateField(field, changedValue);
            },
          ),
        ));
  }

  ImageProvider _buildImage() {
    final imageUrl = controller.getField(WishField.imageUrl);
    if (imageUrl == null) {
      return AssetImage('assets/images/present_asset.jpg');
    }
    return NetworkImage(imageUrl);
  }

  @override
  Widget build(BuildContext context) {
    return WisheyScaffold(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 200,
              width: Get.width,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: _buildImage(),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width / 2.0,
                    height: 15,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'wish_name'.tr,
                        isDense: true,
                      ),
                      onChanged: (String changedValue) {
                        controller.updateField(
                          controller.fields.first,
                          changedValue,
                        );
                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add_a_photo),
                    onPressed: controller.pickImage,
                    splashRadius: 2.0,
                  ),
                ],
              ),
            ),
            ..._buildInputFields(),
          ],
        ),
      ),
    );
  }
}
