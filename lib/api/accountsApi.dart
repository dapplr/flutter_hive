part of 'api.dart';

extension AccountsApi on HiveApi {
  /// Fetch accounts with [users] as a List of usernames on Hive blockchain. e.g getAccounts(["funnyman", "crazyman"])
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<Map<String, dynamic>> getAccounts({List<String> users, Function callback}) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_accounts",
      [
        [...users]
      ],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch accounts with [accountNames] as a List of usernames on Hive blockchain. e.g lookupAccountNames(["funnyman", "crazyman"])
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<Map<String, dynamic>> lookupAccountNames({List<String> accountNames, Function callback}) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "lookup_account_names",
      [
        [...accountNames]
      ],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch accounts with [lowerBoundName] as the lowerbound name e.g lookupAccounts("blo")
  ///
  /// [limit], Number of accounts you want in the response, int, default value is `20`
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<Map<String, dynamic>> lookupAccounts({List<String> lowerBoundName, int limit = 20, Function callback}) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "lookup_accounts",
      [
        lowerBoundName,
        limit,
      ],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }
}
