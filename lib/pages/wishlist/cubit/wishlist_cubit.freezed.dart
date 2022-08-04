// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wishlist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishlistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Wish> wishes) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingWishlistState value) loading,
    required TResult Function(LoadedWishlistState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingWishlistState value)? loading,
    TResult Function(LoadedWishlistState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingWishlistState value)? loading,
    TResult Function(LoadedWishlistState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  final WishlistState _value;
  // ignore: unused_field
  final $Res Function(WishlistState) _then;
}

/// @nodoc
abstract class _$$LoadingWishlistStateCopyWith<$Res> {
  factory _$$LoadingWishlistStateCopyWith(_$LoadingWishlistState value,
          $Res Function(_$LoadingWishlistState) then) =
      __$$LoadingWishlistStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingWishlistStateCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res>
    implements _$$LoadingWishlistStateCopyWith<$Res> {
  __$$LoadingWishlistStateCopyWithImpl(_$LoadingWishlistState _value,
      $Res Function(_$LoadingWishlistState) _then)
      : super(_value, (v) => _then(v as _$LoadingWishlistState));

  @override
  _$LoadingWishlistState get _value => super._value as _$LoadingWishlistState;
}

/// @nodoc

class _$LoadingWishlistState implements LoadingWishlistState {
  const _$LoadingWishlistState();

  @override
  String toString() {
    return 'WishlistState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingWishlistState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Wish> wishes) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingWishlistState value) loading,
    required TResult Function(LoadedWishlistState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingWishlistState value)? loading,
    TResult Function(LoadedWishlistState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingWishlistState value)? loading,
    TResult Function(LoadedWishlistState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingWishlistState implements WishlistState {
  const factory LoadingWishlistState() = _$LoadingWishlistState;
}

/// @nodoc
abstract class _$$LoadedWishlistStateCopyWith<$Res> {
  factory _$$LoadedWishlistStateCopyWith(_$LoadedWishlistState value,
          $Res Function(_$LoadedWishlistState) then) =
      __$$LoadedWishlistStateCopyWithImpl<$Res>;
  $Res call({List<Wish> wishes});
}

/// @nodoc
class __$$LoadedWishlistStateCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res>
    implements _$$LoadedWishlistStateCopyWith<$Res> {
  __$$LoadedWishlistStateCopyWithImpl(
      _$LoadedWishlistState _value, $Res Function(_$LoadedWishlistState) _then)
      : super(_value, (v) => _then(v as _$LoadedWishlistState));

  @override
  _$LoadedWishlistState get _value => super._value as _$LoadedWishlistState;

  @override
  $Res call({
    Object? wishes = freezed,
  }) {
    return _then(_$LoadedWishlistState(
      wishes == freezed
          ? _value._wishes
          : wishes // ignore: cast_nullable_to_non_nullable
              as List<Wish>,
    ));
  }
}

/// @nodoc

class _$LoadedWishlistState implements LoadedWishlistState {
  const _$LoadedWishlistState(final List<Wish> wishes) : _wishes = wishes;

  final List<Wish> _wishes;
  @override
  List<Wish> get wishes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishes);
  }

  @override
  String toString() {
    return 'WishlistState.loaded(wishes: $wishes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedWishlistState &&
            const DeepCollectionEquality().equals(other._wishes, _wishes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wishes));

  @JsonKey(ignore: true)
  @override
  _$$LoadedWishlistStateCopyWith<_$LoadedWishlistState> get copyWith =>
      __$$LoadedWishlistStateCopyWithImpl<_$LoadedWishlistState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Wish> wishes) loaded,
  }) {
    return loaded(wishes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
  }) {
    return loaded?.call(wishes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(wishes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingWishlistState value) loading,
    required TResult Function(LoadedWishlistState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingWishlistState value)? loading,
    TResult Function(LoadedWishlistState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingWishlistState value)? loading,
    TResult Function(LoadedWishlistState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedWishlistState implements WishlistState {
  const factory LoadedWishlistState(final List<Wish> wishes) =
      _$LoadedWishlistState;

  List<Wish> get wishes;
  @JsonKey(ignore: true)
  _$$LoadedWishlistStateCopyWith<_$LoadedWishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}
