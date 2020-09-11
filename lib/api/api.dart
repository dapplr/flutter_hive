import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_hive/constants/constants.dart';

class HiveApi {
  Random random = new Random(99);
  Dio dio = new Dio();

  Map<String, dynamic> baseApiPayload = {
    'id': '1',
    'jsonrpc': "2.0",
    'method': "call",
    'params': [],
  };

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

  Map<String, dynamic> getPayload({dynamic params, Map<String, dynamic> payload}) {
    if (payload == null) payload = {};
    return {...baseApiPayload, ...payload, 'params': params};
  }

  Future<dynamic> getAccounts(List<String> value) async {
    Map<String, dynamic> payload = getPayload(params: [
      "database_api",
      "get_accounts",
      [
        [...value]
      ],
    ]);
    return await postApi(payload: payload);
  }
}
