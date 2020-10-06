part of 'api.dart';

extension GlobalPropertiesApi on HiveApi {
  /// Fetch config data
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getConfig({
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_config",
      [],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch dynamic global properties data
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getDynamicGlobalProperties({
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_dynamic_global_properties",
      [],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }
}
