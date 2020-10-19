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
}
