import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:resume_room/src/core/env/env_config.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get client {
    final options = BaseOptions(
      baseUrl: EnvConfig.baseApiUrl,
    );
    return Dio(options);
  }
}
