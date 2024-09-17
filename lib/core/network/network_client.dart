import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:news_app/core/Utilities/helper.dart';
import 'package:news_app/core/shared/constant.dart';

class NetworkClient {
  final Dio _dio;
  final Constant constant;
  NetworkClient(this._dio, {required this.constant}) {
    setupCacheStore();
  }

  setupCacheStore() async {
    _dio.options = BaseOptions(baseUrl: constant.apiBaseUrl);
    _dio.interceptors.add(DioCacheInterceptor(options: await getCacheOptions()));
  }

  get dio => _dio;
}