import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_hive/constants/constants.dart';
import 'package:flutter_hive/enums/RequestSortType.dart';

part 'fetchDiscussionApi.dart';
part 'blockApi.dart';
part 'globalPropertiesApi.dart';
part 'keysApi.dart';
part 'accountsApi.dart';

class HiveApi {
  Random random = new Random(99);
  Dio dio = new Dio();

  Map<String, dynamic> _baseApiPayload = {
    "id": "1",
    "jsonrpc": "2.0",
    "method": "call",
    "params": [],
  };

  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<Map<String, dynamic>> _postApi({dynamic payload, Function callback}) async {
    Response response = await dio.post(BASE_HIVE_API_URL, data: payload);
    if (response.statusCode == 200 && response.data != null && response.data["result"] != null) {
      if (callback != null) {
        callback(value: response.data["result"]);
      }
      return {"status": "ok", "data": response.data["result"]};
    } else {
      return {"status": "error", "data": response.data["error"]};
    }
  }

  Map<String, dynamic> _getPayload({dynamic params, Map<String, dynamic> payload}) {
    if (payload == null) payload = {};
    return {..._baseApiPayload, ...payload, "params": params, "id": random.nextInt(99)};
  }

  /// This will change the default BASE_HIVE_API_URL to the passed argument eg. setBaseOrigin("https://api.hive.blog")
  String setBaseOrigin(String value) {
    BASE_HIVE_API_URL = value;
    return BASE_HIVE_API_URL;
  }
}
