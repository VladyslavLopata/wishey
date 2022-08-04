// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wishlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wish _$WishFromJson(Map<String, dynamic> json) {
  return _Wish.fromJson(json);
}

/// @nodoc
mixin _$Wish {
  String get id => throw _privateConstructorUsedError;
  String get title =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishCopyWith<Wish> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishCopyWith<$Res> {
  factory $WishCopyWith(Wish value, $Res Function(Wish) then) =
      _$WishCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'image_url') String? imageUrl,
      String? note,
      String? price});
}

/// @nodoc
class _$WishCopyWithImpl<$Res> implements $WishCopyWith<$Res> {
  _$WishCopyWithImpl(this._value, this._then);

  final Wish _value;
  // ignore: unused_field
  final $Res Function(Wish) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? note = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_WishCopyWith<$Res> implements $WishCopyWith<$Res> {
  factory _$$_WishCopyWith(_$_Wish value, $Res Function(_$_Wish) then) =
      __$$_WishCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'image_url') String? imageUrl,
      String? note,
      String? price});
}

/// @nodoc
class __$$_WishCopyWithImpl<$Res> extends _$WishCopyWithImpl<$Res>
    implements _$$_WishCopyWith<$Res> {
  __$$_WishCopyWithImpl(_$_Wish _value, $Res Function(_$_Wish) _then)
      : super(_value, (v) => _then(v as _$_Wish));

  @override
  _$_Wish get _value => super._value as _$_Wish;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? note = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_Wish(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wish implements _Wish {
  const _$_Wish(
      {required this.id,
      required this.title,
      @JsonKey(name: 'image_url') this.imageUrl,
      this.note,
      this.price});

  factory _$_Wish.fromJson(Map<String, dynamic> json) => _$$_WishFromJson(json);

  @override
  final String id;
  @override
  final String title;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  final String? note;
  @override
  final String? price;

  @override
  String toString() {
    return 'Wish(id: $id, title: $title, imageUrl: $imageUrl, note: $note, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wish &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_WishCopyWith<_$_Wish> get copyWith =>
      __$$_WishCopyWithImpl<_$_Wish>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishToJson(
      this,
    );
  }
}

abstract class _Wish implements Wish {
  const factory _Wish(
      {required final String id,
      required final String title,
      @JsonKey(name: 'image_url') final String? imageUrl,
      final String? note,
      final String? price}) = _$_Wish;

  factory _Wish.fromJson(Map<String, dynamic> json) = _$_Wish.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  String? get note;
  @override
  String? get price;
  @override
  @JsonKey(ignore: true)
  _$$_WishCopyWith<_$_Wish> get copyWith => throw _privateConstructorUsedError;
}

WishGroup _$WishGroupFromJson(Map<String, dynamic> json) {
  return _WishGroup.fromJson(json);
}

/// @nodoc
mixin _$WishGroup {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishGroupCopyWith<WishGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishGroupCopyWith<$Res> {
  factory $WishGroupCopyWith(WishGroup value, $Res Function(WishGroup) then) =
      _$WishGroupCopyWithImpl<$Res>;
  $Res call({String id, String title});
}

/// @nodoc
class _$WishGroupCopyWithImpl<$Res> implements $WishGroupCopyWith<$Res> {
  _$WishGroupCopyWithImpl(this._value, this._then);

  final WishGroup _value;
  // ignore: unused_field
  final $Res Function(WishGroup) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_WishGroupCopyWith<$Res> implements $WishGroupCopyWith<$Res> {
  factory _$$_WishGroupCopyWith(
          _$_WishGroup value, $Res Function(_$_WishGroup) then) =
      __$$_WishGroupCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title});
}

/// @nodoc
class __$$_WishGroupCopyWithImpl<$Res> extends _$WishGroupCopyWithImpl<$Res>
    implements _$$_WishGroupCopyWith<$Res> {
  __$$_WishGroupCopyWithImpl(
      _$_WishGroup _value, $Res Function(_$_WishGroup) _then)
      : super(_value, (v) => _then(v as _$_WishGroup));

  @override
  _$_WishGroup get _value => super._value as _$_WishGroup;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_WishGroup(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WishGroup implements _WishGroup {
  const _$_WishGroup({required this.id, required this.title});

  factory _$_WishGroup.fromJson(Map<String, dynamic> json) =>
      _$$_WishGroupFromJson(json);

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'WishGroup(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishGroup &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_WishGroupCopyWith<_$_WishGroup> get copyWith =>
      __$$_WishGroupCopyWithImpl<_$_WishGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishGroupToJson(
      this,
    );
  }
}

abstract class _WishGroup implements WishGroup {
  const factory _WishGroup(
      {required final String id, required final String title}) = _$_WishGroup;

  factory _WishGroup.fromJson(Map<String, dynamic> json) =
      _$_WishGroup.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_WishGroupCopyWith<_$_WishGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
