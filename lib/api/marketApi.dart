part of 'api.dart';

extension MarketApi on HiveApi {
  /// Fetch order book data
  ///
  /// [limit] int, Max number of entries to be fetched, default value = 10
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getOrderBook({
    int limit = 10,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_order_book",
      [limit],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch the open orders of a user
  ///
  /// [owner] String, Account name e.g "dapplr".
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getOpenOrders({
    String owner,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_open_orders",
      [owner],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch the top-most entries in the market order book for both buy and sell orders.
  ///
  /// [limit] int, Max number of entries to be fetched, default value = 20
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getMarketOrderBook({
    int limit = 20,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "market_history_api",
      "get_order_book",
      [limit],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }
}
