// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../pages/home/cubit/home_cubit.dart' as _i6;
import '../../pages/wishlist/cubit/wishlist_cubit.dart' as _i5;
import '../../repositories/wish_repository.dart' as _i4;
import '../dio_injection_module.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get, {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioInjectionModule = _$DioInjectionModule();
  gh.singleton<_i3.Dio>(dioInjectionModule.dio);
  gh.singleton<_i4.WishRepository>(_i4.WishRepository(get<_i3.Dio>()));
  gh.factory<_i5.WishlistCubit>(() => _i5.WishlistCubit(get<_i4.WishRepository>()));
  gh.factory<_i6.HomeCubit>(() => _i6.HomeCubit(get<_i4.WishRepository>()));
  return get;
}

class _$DioInjectionModule extends _i7.DioInjectionModule {}
