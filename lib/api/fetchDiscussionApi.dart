part of 'api.dart';

extension FetchDiscussionApi on HiveApi {
  /// Fetch trending tags with [afterTag] as a String containing the name of the tag and [limit] as a int for limited entries. e.g getTrendingTags(afterTag: "dapplr", limit: 25)
  /// [afterTag] defaultValue is "hive" and [limit] default value is 20
  /// The response will be passed in [callback] eg. callback({dynmaic value}){}
  Future<dynamic> getTrendingTags({
    String afterTag = HIVE,
    int limit = 20,
    Function callback,
  }) async {
    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      "get_trending_tags",
      [
        [afterTag, limit]
      ],
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch the post discussions.
  /// [limit] int, default value is `15`
  ///
  /// [account] String, Account name `e.g funnyman`
  ///
  /// [startAuthor] String, Author of a psot where to start the list from `e.g dapplr`
  ///
  /// [startPermlink] String, Permlink of a post where to start the list from `e.g dapplr-is-now-hardfork-24-compatible-ios-updates-and-enhancements`
  ///
  /// [sort] RequestSortType, sort `e.g RequestSortType.trending`
  ///
  /// [observer] String, Requester username `e.g funnyman`
  ///
  /// The response will be passed in [callback] `eg. callback({dynmaic value}){}`
  Future<dynamic> _getPostDiscussions({
    String discussionType,
    int limit = 15,
    String account,
    String observer,
    String startAuthor,
    String startPermlink,
    RequestSortType sort,
    Function callback,
  }) async {
    Map<String, dynamic> query = {"limit": limit};
    if (account != null) {
      query["account"] = account;
    }
    if (startAuthor != null && startPermlink != null) {
      query["start_author"] = startAuthor;
      query["start_permlink"] = startPermlink;
    }
    if (sort != null) {
      query["sort"] = getRequestSortTypeString(sort);
    }
    if (observer != null) {
      query["observer"] = observer;
    }

    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      discussionType,
      {...query}
    ]);
    return await _postApi(payload: payload, callback: callback);
  }
}
