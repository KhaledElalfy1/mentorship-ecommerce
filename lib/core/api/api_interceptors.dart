import 'package:dio/dio.dart';
class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // send header of api here
    // options.headers['token'] = CacheHelper().getData(key: ApiKeys.token) != null
    //     ? 'FOODAPI ${CacheHelper().getData(key: ApiKeys.token)}'
    //     : null;

    super.onRequest(options, handler);
  }
}
