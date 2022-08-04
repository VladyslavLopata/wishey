import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist.freezed.dart';
part 'wishlist.g.dart';

@freezed
class Wish with _$Wish {
  const factory Wish({
    required String id,
    required String title,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'image_url') String? imageUrl,
    String? note,
    String? price,
  }) = _Wish;

  factory Wish.fromJson(Map<String, dynamic> json) => _$WishFromJson(json);
}

@freezed
class WishGroup with _$WishGroup {
  const factory WishGroup({
    required String id,
    required String title,
  }) = _WishGroup;

  factory WishGroup.fromJson(Map<String, dynamic> json) =>
      _$WishGroupFromJson(json);
}
