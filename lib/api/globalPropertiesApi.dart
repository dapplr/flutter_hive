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

  /// Fetch chain properties data
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getChainProperties({
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_chain_properties",
      [],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch feed history data
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getFeedHistory({
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_feed_history",
      [],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch current median history price data
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getCurrentMedianHistoryPrice({
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_current_median_history_price",
      [],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch hard fork version data.
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getHardforkVersion({
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_hardfork_version",
      [],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch next harfork version data
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getNextScheduledHardfork({
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_next_scheduled_hardfork",
      [],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch reward fund data
  ///
  /// [name] String, Name of the fund `e.g "post"`
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getRewardFund({
    String name,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_reward_fund",
      [name],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }
}
