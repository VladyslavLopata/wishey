// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WishGroup> wishlists) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WishGroup> wishlists)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WishGroup> wishlists)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(LoadedHomeState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(LoadedHomeState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(LoadedHomeState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$$LoadingHomeStateCopyWith<$Res> {
  factory _$$LoadingHomeStateCopyWith(
          _$LoadingHomeState value, $Res Function(_$LoadingHomeState) then) =
      __$$LoadingHomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingHomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$LoadingHomeStateCopyWith<$Res> {
  __$$LoadingHomeStateCopyWithImpl(
      _$LoadingHomeState _value, $Res Function(_$LoadingHomeState) _then)
      : super(_value, (v) => _then(v as _$LoadingHomeState));

  @override
  _$LoadingHomeState get _value => super._value as _$LoadingHomeState;
}

/// @nodoc

class _$LoadingHomeState implements LoadingHomeState {
  const _$LoadingHomeState();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingHomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WishGroup> wishlists) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WishGroup> wishlists)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WishGroup> wishlists)? loaded,
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
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(LoadedHomeState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(LoadedHomeState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(LoadedHomeState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingHomeState implements HomeState {
  const factory LoadingHomeState() = _$LoadingHomeState;
}

/// @nodoc
abstract class _$$LoadedHomeStateCopyWith<$Res> {
  factory _$$LoadedHomeStateCopyWith(
          _$LoadedHomeState value, $Res Function(_$LoadedHomeState) then) =
      __$$LoadedHomeStateCopyWithImpl<$Res>;
  $Res call({List<WishGroup> wishlists});
}

/// @nodoc
class __$$LoadedHomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$LoadedHomeStateCopyWith<$Res> {
  __$$LoadedHomeStateCopyWithImpl(
      _$LoadedHomeState _value, $Res Function(_$LoadedHomeState) _then)
      : super(_value, (v) => _then(v as _$LoadedHomeState));

  @override
  _$LoadedHomeState get _value => super._value as _$LoadedHomeState;

  @override
  $Res call({
    Object? wishlists = freezed,
  }) {
    return _then(_$LoadedHomeState(
      wishlists == freezed
          ? _value._wishlists
          : wishlists // ignore: cast_nullable_to_non_nullable
              as List<WishGroup>,
    ));
  }
}

/// @nodoc

class _$LoadedHomeState implements LoadedHomeState {
  const _$LoadedHomeState(final List<WishGroup> wishlists)
      : _wishlists = wishlists;

  final List<WishGroup> _wishlists;
  @override
  List<WishGroup> get wishlists {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlists);
  }

  @override
  String toString() {
    return 'HomeState.loaded(wishlists: $wishlists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedHomeState &&
            const DeepCollectionEquality()
                .equals(other._wishlists, _wishlists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wishlists));

  @JsonKey(ignore: true)
  @override
  _$$LoadedHomeStateCopyWith<_$LoadedHomeState> get copyWith =>
      __$$LoadedHomeStateCopyWithImpl<_$LoadedHomeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<WishGroup> wishlists) loaded,
  }) {
    return loaded(wishlists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WishGroup> wishlists)? loaded,
  }) {
    return loaded?.call(wishlists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<WishGroup> wishlists)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(wishlists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(LoadedHomeState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(LoadedHomeState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(LoadedHomeState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedHomeState implements HomeState {
  const factory LoadedHomeState(final List<WishGroup> wishlists) =
      _$LoadedHomeState;

  List<WishGroup> get wishlists;
  @JsonKey(ignore: true)
  _$$LoadedHomeStateCopyWith<_$LoadedHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
