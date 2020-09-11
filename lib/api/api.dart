import 'package:dio/dio.dart';
import 'package:flutter_hive/constants/constants.dart';

class HiveApi {
  Dio dio = new Dio();

  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<Map<String, dynamic>> postApi({dynamic payload, Function callback}) async {
    Response response = await dio.post(BASE_HIVE_API_URL, data: payload);
    if (response.statusCode == 200 && response.data != null && response.data["result"] == null) {
      if (callback != null) {
        callback(value: response.data["result"]);
      }
      return {"status": "ok", "data": response.data["result"]};
    } else {
      return {"status": "error", "data": response.data["error"]};
    }
  }

  /// This will change the default BASE_HIVE_API_URL to the passed argument eg. setBaseOrigin("https://api.hive.blog")
  String setBaseOrigin(String value) {
    BASE_HIVE_API_URL = value;
    return BASE_HIVE_API_URL;
  }
}
