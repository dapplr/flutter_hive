part of 'api.dart';

extension AuthorityApi on HiveApi {
  /// Fetch account names referenced to the keys
  ///
  /// [trx] Map, trx data e.g ` {"trx": {"ref_block_num": 0, "ref_block_prefix": 0, "expiration": "1970-01-01T00:00:00", "operations": [], "extensions": [],"signatures": [] }}`
  ///
  /// [trx] e.g `{"trx": {"ref_block_num":1097,"ref_block_prefix":2181793527,"expiration":"2016-03-24T18:00:21","operations":[{"type":"pow_operation","value":{"worker_account":"cloop3","block_id":"00000449f7860b82b4fbe2f317c670e9f01d6d9a","nonce":3899,"work":{"worker":"STM7P5TDnA87Pj9T4mf6YHrhzjC1KbPZpNxLWCcVcHxNYXakpoT4F","input":"ae8e7c677119d22385f8c48026fee7aad7bba693bf788d7f27047f40b47738c0","signature":"1f38fe9a3f9989f84bd94aa5bbc88beaf09b67f825aa4450cf5105d111149ba6db560b582c7dbb026c7fc9c2eb5051815a72b17f6896ed59d3851d9a0f9883ca7a","work":"000e7b209d58f2e64b36e9bf12b999c6c7af168cc3fc41eb7f8a4bf796c174c3"},"props":{"account_creation_fee":{"amount":"100000","precision":3,"nai":"@@000000021"},"maximum_block_size":131072,"hbd_interest_rate":1000}}}],"extensions":[],"signatures":[]}}`
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getTransactionHex({
    Map trx,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_transaction_hex",
      [trx],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch the details of a transaction based on a transaction id.
  ///
  /// [trx] String, Transaction id e.g trxId of a vote - `73fcec50f9c83521df4c9714f5aebd34ce3436e4`
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getTransaction({
    String trxId,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_transaction",
      [trxId],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch the authority of a transaction.
  ///
  /// [trx] Map, trx data e.g `{ "trx": {"ref_block_num": 0, "ref_block_prefix": 0, "expiration": "1970-01-01T00:00:00", "operations": [], "extensions": [],"signatures": []} }`
  ///
  /// e.g `{"trx": {"ref_block_num":1097,"ref_block_prefix":2181793527,"expiration":"2016-03-24T18:00:21","operations":[["pow",{"worker_account":"cloop3","block_id":"00000449f7860b82b4fbe2f317c670e9f01d6d9a","nonce":3899,"work":{"worker":"STM7P5TDnA87Pj9T4mf6YHrhzjC1KbPZpNxLWCcVcHxNYXakpoT4F","input":"ae8e7c677119d22385f8c48026fee7aad7bba693bf788d7f27047f40b47738c0","signature":"1f38fe9a3f9989f84bd94aa5bbc88beaf09b67f825aa4450cf5105d111149ba6db560b582c7dbb026c7fc9c2eb5051815a72b17f6896ed59d3851d9a0f9883ca7a","work":"000e7b209d58f2e64b36e9bf12b999c6c7af168cc3fc41eb7f8a4bf796c174c3"},"props":{"account_creation_fee":{"amount":"100000","precision":3,"nai":"@@000000021"},"maximum_block_size":131072,"hbd_interest_rate":1000}}]],"extensions":[],"signatures":[]}}`
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  ///
  /// returns `true` if the transaction has all of the required signatures, otherwise throws an exception.
  Future<dynamic> verifyAuthority({
    Map trx,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "verify_authority",
      [trx],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Verify the authority of an account.
  ///
  /// [account] String, Account name to verify the authority of. e.g "temp"
  ///
  /// [signers] List, List of signer against which we want to verify the authority of the account. e.g ["STM8GC13uCZbP44HzMLV6zPZGwVQ8Nt4Kji8PapsPiNq1BK153XTX"]
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  ///
  /// returns `true` if account authority is successfully verified.
  Future<dynamic> verifyAccountAuthority({
    String account,
    List<String> signers,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "verify_account_authority",
      [account, signers],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch the set of all public keys that could possibly sign for a given transaction. This call can be used by wallets to filter their set of public keys to just the relevant subset prior to calling get_required_signatures to get the minimum subset.
  ///
  /// [trx] Map, trx data e.g `{"trx":{"ref_block_num":0,"ref_block_prefix":0,"expiration":"1970-01-01T00:00:00","operations":[],"extensions":[],"signatures":[]}}`
  ///
  /// e.g `{"trx":{"ref_block_num":1097,"ref_block_prefix":2181793527,"expiration":"2016-03-24T18:00:21","operations":[{"type":"pow_operation","value":{"worker_account":"cloop3","block_id":"00000449f7860b82b4fbe2f317c670e9f01d6d9a","nonce":3899,"work":{"worker":"STM7P5TDnA87Pj9T4mf6YHrhzjC1KbPZpNxLWCcVcHxNYXakpoT4F","input":"ae8e7c677119d22385f8c48026fee7aad7bba693bf788d7f27047f40b47738c0","signature":"1f38fe9a3f9989f84bd94aa5bbc88beaf09b67f825aa4450cf5105d111149ba6db560b582c7dbb026c7fc9c2eb5051815a72b17f6896ed59d3851d9a0f9883ca7a","work":"000e7b209d58f2e64b36e9bf12b999c6c7af168cc3fc41eb7f8a4bf796c174c3"},"props":{"account_creation_fee":{"amount":"100000","precision":3,"nai":"@@000000021"},"maximum_block_size":131072,"hbd_interest_rate":1000}}}],"extensions":[],"signatures":[]}}`
  ///
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  ///
  /// returns `true` if account authority is successfully verified.
  Future<dynamic> getPotentialSignatures({
    Map trx,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_potential_signatures",
      [trx],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }
}
