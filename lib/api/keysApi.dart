part of 'api.dart';

extension KeyApi on HiveApi {
  /// Fetch account names referenced to the keys
  ///
  /// [keys] List, Keys to the referenced accounts (keys) `e.g ["STM7peJ4EfsE4yBrTcRqPwcrzuFyhHEZkHyaJMX7nscW78cEB1YjD", "STM5jZtLoV8YbxCxr4imnbWn61zMB24wwonpnVhfXRmv7j6fk3dTH"]`
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getKeyReferences({
    List keys,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "account_by_key_api",
      "get_key_references",
      [keys],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }
}
