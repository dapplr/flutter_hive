part of 'api.dart';

extension MarketApi on HiveApi {
  /// Fetch order book data
  ///
  /// [limit] int, Max number of entries to be fetched.
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
}
