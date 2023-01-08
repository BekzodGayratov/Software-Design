import 'package:dio/dio.dart';

class DioHandleCatchError {
  static String handlerCatchError(DioError e) {
    switch (e.type) {
      case DioErrorType.connectTimeout:
        return "Connect timeout";
      case DioErrorType.receiveTimeout:
        return "Receive timeout";
      case DioErrorType.sendTimeout:
        return "Send timeout";
      case DioErrorType.other:
        return "No internet connection";
      default:
        return "Something went wrong";
    }
  }
}
