import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_hive/constants/constants.dart';

class HiveApi {
  Random random = new Random(99);
  Dio dio = new Dio();

  Map<String, dynamic> _baseApiPayload = {
    'id': '1',
    'jsonrpc': "2.0",
    'method': "call",
    'params': [],
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
    return {..._baseApiPayload, ...payload, 'params': params, "id": random.nextInt(99)};
  }

  /// This will change the default BASE_HIVE_API_URL to the passed argument eg. setBaseOrigin("https://api.hive.blog")
  String setBaseOrigin(String value) {
    BASE_HIVE_API_URL = value;
    return BASE_HIVE_API_URL;
  }

  /// Fetch accounts with [users] as a List of usernames on Hive blockchain. e.g getAccounts(["funnyman", "crazyman"])
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getAccounts({List<String> users, Function callback}) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_accounts",
      [
        [...users]
      ],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch accounts with [author] as a String and [permlink] as a String of the post. e.g fetchPostDiscussions(author: "dapplr", permlink: "dapplr-is-now-hardfork-24-compatible-ios-updates-and-enhancements")
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> fetchPostDiscussions({
    String author,
    String permlink,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(payload: {
      "method": "bridge.get_discussion",
    }, params: {
      "author": author,
      "permlink": permlink,
    });

    return await _postApi(payload: payload, callback: callback);
  }
}
