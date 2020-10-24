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

  /// Fetch the total number of accounts on the blockchain.
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<Map<String, dynamic>> getAccountCount({Function callback}) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_account_count",
      [],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch the conversion requests for an account on the blockchain.
  ///
  /// [accountName], Account name, String, e.g "dapplr"
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<Map<String, dynamic>> getConversionRequests({String accountName, Function callback}) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_conversion_requests",
      [accountName],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch the owner history on the blockchain.
  ///
  /// [account], Account name, String, e.g "dapplr"
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<Map<String, dynamic>> getOwnerHistory({String account, Function callback}) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_owner_history",
      [account],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }
}
