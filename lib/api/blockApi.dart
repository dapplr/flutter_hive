part of 'api.dart';

extension BlockApi on HiveApi {
  /// Fetch block header
  ///
  /// [blockNum] block number, This value is required e.g getBlockHeader(blockNum: 47506248)
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getBlockHeader({
    int blockNum,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_block_header",
      [blockNum],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch block data
  ///
  /// [blockNum] block number, This value is required e.g getBlock(blockNum: 47506248)
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getBlock({
    int blockNum,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_block",
      [blockNum],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }
}
