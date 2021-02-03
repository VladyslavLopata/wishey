import 'package:get/get.dart';

enum WishField {
  name,
  imageUrl,
  theme,
  price,
  link,
  note,
  fromWho,
}

class WishMakerController extends GetxController {
  final Map<WishField, String> _wishFields;

  //for IO and conversion to [Wish] model
  WishMakerController()
      : _wishFields =
            Map.fromEntries(WishField.values.map((e) => MapEntry(e, null)));

  String getField(WishField field) => _wishFields[field];
  String getFieldName(WishField field) => field.toString().tr;

  List<WishField> get fields => WishField.values;

  void pickImage() {
    //TODO implement
  }

  void updateField(WishField field, String changedValue) =>
      _wishFields[field] = changedValue;
}
