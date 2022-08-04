import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:wishey/core/api_config.dart';

@module
abstract class DioInjectionModule {
  @singleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: ApiConfig.apiAddress,
        ),
      )..interceptors.add(PrettyDioLogger());
}
