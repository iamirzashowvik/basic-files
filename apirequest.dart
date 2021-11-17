import 'package:dio/dio.dart' as DIO;
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:petspital/app/services/apiservice.dart';

class ApiRequest {
  //TODO: dependency injection
  final String url;
  final gs = GetStorage();
  final dynamic data;

  ApiRequest({
    required this.url,
    this.data,
  });
  // var tokenBox = Hive.openBox('tokenBox');
  // tokenBox.put("apiToken", data["api_token"]);

  static DIO.Dio dio = DIO.Dio(
    DIO.BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Authorization': "Bearer ${GetStorage().read('stoken')}",
        'User-Agent': 'Mobile'
      },
    ),
  )
    ..interceptors
        .add(DIO.LogInterceptor(responseBody: true, requestBody: true))
    ..interceptors.add(DioCacheManager(CacheConfig(
      baseUrl: baseUrl,
    )).interceptor);

  Future<DIO.Response>? get({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    beforeSend();
    printInfo(
        info:
            "GET /$url queryParameters:$data Token: ${GetStorage().read('stoken')}");
    dio.get(this.url, queryParameters: this.data).then((res) {
      if (onSuccess != null) onSuccess(res.data);
      return res;
    }).catchError((error, s) {
      print("------------>" + s.toString());
      if (onError != null) onError(error);
    });
  }

  Future<DIO.Response>? post({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    // Hive.openBox("tokenBox");
    beforeSend == null ? null : beforeSend();
    printInfo(
        info: "POST /$url DATA:$data Token: ${GetStorage().read('stoken')}");

    dio.post(this.url, data: this.data).then((res) {
      if (res.statusCode == 400) {
        onError(res.data);
      } else if (onSuccess != null) {
        onSuccess(res.data);
        return res;
      }
    }).catchError((error) {
      // printError(info: error.toString());
      if (onError != null) onError(error);
    });
  }

  Future<DIO.Response>? delete({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    beforeSend == null ? null : beforeSend();
    printInfo(
        info: "DELETE /$url DATA:$data Token: ${GetStorage().read('stoken')}");

    dio.delete(this.url, data: this.data).then((res) {
      if (res.statusCode == 400) {
        onError(res.data);
      } else if (onSuccess != null) {
        onSuccess(res.data);
        return res;
      }
    }).catchError((error) {
      printError(info: error.toString());
      if (onError != null) onError(error);
    });
  }

  Future<DIO.Response>? patch({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    beforeSend == null ? null : beforeSend();
    printInfo(
        info: "PATCH /$url DATA:$data Token: ${GetStorage().read('stoken')}");

    dio.patch(this.url, data: this.data).then((res) {
      if (res.statusCode == 202) {
        onError(res.data);
      } else if (onSuccess != null) {
        onSuccess(res.data);
        return res;
      }
    }).catchError((error) {
      printError(info: error.toString());
      if (onError != null) onError(error);
    });
  }

  Future<DIO.Response>? put({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    beforeSend == null ? null : beforeSend();
    printInfo(
        info: "PUT /$url DATA:$data Token: ${GetStorage().read('stoken')}");

    dio.put(this.url, data: this.data).then((res) {
      if (res.statusCode == 202) {
        onError(res.data);
      } else if (onSuccess != null) {
        onSuccess(res.data);
        return res;
      }
    }).catchError((error) {
      printError(info: error.toString());
      if (onError != null) onError(error);
    });
  }
}

resetDIO() {
  ApiRequest.dio = DIO.Dio(
    DIO.BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Authorization': "Bearer ${GetStorage().read('stoken')}",
        'User-Agent': 'Mobile'
      },
    ),
  )
    ..interceptors
        .add(DIO.LogInterceptor(responseBody: true, requestBody: true))
    ..interceptors.add(DioCacheManager(CacheConfig(
      baseUrl: baseUrl,
    )).interceptor);
}
