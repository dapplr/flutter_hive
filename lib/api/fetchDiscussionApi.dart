part of 'api.dart';

extension FetchDiscussionApi on HiveApi {
  /// Fetch trending tags with [afterTag] as a String containing the name of the tag and [limit] as a int for limited entries. e.g getTrendingTags(afterTag: "dapplr", limit: 25)
  ///
  /// [afterTag] defaultValue is "hive" and [limit] default value is 20
  ///
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
  /// [tag] String, community tag name or normal tags `e.g hive-102930`
  ///
  /// [sort] RequestSortType, sort `e.g RequestSortType.trending`
  ///
  /// [observer] String, Requester username `e.g funnyman`
  ///
  /// The response will be passed in [callback] `eg. callback({dynmaic value}){}`
  Future<Map<String, dynamic>> _getPostDiscussions({
    String discussionType,
    int limit = 15,
    String account,
    String observer,
    String startAuthor,
    String startPermlink,
    String tag,
    RequestSortType sort,
    Map<String, dynamic> additionalQuery,
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
    if (tag != null) {
      tag = tag;
    }

    Map<String, dynamic> payload = _getPayload(params: [
      "database_api",
      discussionType,
      [
        {...query, ...additionalQuery}
      ]
    ]);
    return await _postApi(payload: payload, callback: callback);
  }

  /// Fetch the post discussions by trending.
  /// [limit] int, default value is `15`
  ///
  /// [startAuthor] String, Author of a psot where to start the list from `e.g dapplr`
  ///
  /// [startPermlink] String, Permlink of a post where to start the list from `e.g dapplr-is-now-hardfork-24-compatible-ios-updates-and-enhancements`
  ///
  /// [tag] String, community tag name or normal tags `e.g hive-102930`
  ///
  /// [observer] String, Requester username `e.g funnyman`
  ///
  /// The response will be passed in [callback] `eg. callback({dynmaic value}){}`
  Future<Map<String, dynamic>> getDiscussionsByTrending({int limit, String observer, String startAuthor, String startPermlink, String tag, Function callback, Map<String, dynamic> additionalQuery}) async {
    return await _getPostDiscussions(discussionType: "get_discussions_by_trending", limit: limit ?? 15, observer: observer, startAuthor: startAuthor, startPermlink: startPermlink, tag: tag, callback: callback, additionalQuery: additionalQuery ?? {});
  }

  /// Fetch the post discussions by created.
  /// [limit] int, default value is `15`
  ///
  /// [startAuthor] String, Author of a psot where to start the list from `e.g dapplr`
  ///
  /// [startPermlink] String, Permlink of a post where to start the list from `e.g dapplr-is-now-hardfork-24-compatible-ios-updates-and-enhancements`
  ///
  /// [tag] String, community tag name or normal tags `e.g hive-102930`
  ///
  /// [observer] String, Requester username `e.g funnyman`
  ///
  /// The response will be passed in [callback] `eg. callback({dynmaic value}){}`
  Future<Map<String, dynamic>> getDiscussionsByCreated({int limit, String observer, String startAuthor, String startPermlink, String tag, Function callback, Map<String, dynamic> additionalQuery}) async {
    return await _getPostDiscussions(discussionType: "get_discussions_by_created", limit: limit ?? 15, observer: observer, startAuthor: startAuthor, startPermlink: startPermlink, tag: tag, callback: callback, additionalQuery: additionalQuery ?? {});
  }

  /// Fetch the post discussions by hot.
  /// [limit] int, default value is `15`
  ///
  /// [startAuthor] String, Author of a psot where to start the list from `e.g dapplr`
  ///
  /// [startPermlink] String, Permlink of a post where to start the list from `e.g dapplr-is-now-hardfork-24-compatible-ios-updates-and-enhancements`
  ///
  /// [tag] String, community tag name or normal tags `e.g hive-102930`
  ///
  /// [observer] String, Requester username `e.g funnyman`
  ///
  /// The response will be passed in [callback] `eg. callback({dynmaic value}){}`
  Future<Map<String, dynamic>> getDiscussionsByHot({int limit, String observer, String startAuthor, String startPermlink, String tag, Function callback, Map<String, dynamic> additionalQuery}) async {
    return await _getPostDiscussions(discussionType: "get_discussions_by_hot", limit: limit ?? 15, observer: observer, startAuthor: startAuthor, startPermlink: startPermlink, tag: tag, callback: callback, additionalQuery: additionalQuery ?? {});
  }

  /// Fetch the post discussions by active.
  /// [limit] int, default value is `15`
  ///
  /// [startAuthor] String, Author of a psot where to start the list from `e.g dapplr`
  ///
  /// [startPermlink] String, Permlink of a post where to start the list from `e.g dapplr-is-now-hardfork-24-compatible-ios-updates-and-enhancements`
  ///
  /// [tag] String, community tag name or normal tags `e.g hive-102930`
  ///
  /// [observer] String, Requester username `e.g funnyman`
  ///
  /// The response will be passed in [callback] `eg. callback({dynmaic value}){}`
  Future<Map<String, dynamic>> getDiscussionsByCashout({int limit, String observer, String startAuthor, String startPermlink, String tag, Function callback, Map<String, dynamic> additionalQuery}) async {
    return await _getPostDiscussions(discussionType: "get_discussions_by_cashout", limit: limit ?? 15, observer: observer, startAuthor: startAuthor, startPermlink: startPermlink, tag: tag, callback: callback, additionalQuery: additionalQuery ?? {});
  }

  /// Fetch the post discussions by payout.
  /// [limit] int, default value is `15`
  ///
  /// [startAuthor] String, Author of a psot where to start the list from `e.g dapplr`
  ///
  /// [startPermlink] String, Permlink of a post where to start the list from `e.g dapplr-is-now-hardfork-24-compatible-ios-updates-and-enhancements`
  ///
  /// [tag] String, community tag name or normal tags `e.g hive-102930`
  ///
  /// [observer] String, Requester username `e.g funnyman`
  ///
  /// The response will be passed in [callback] `eg. callback({dynmaic value}){}`
  Future<Map<String, dynamic>> getDiscussionsByPayout({int limit, String observer, String startAuthor, String startPermlink, String tag, Function callback, Map<String, dynamic> additionalQuery}) async {
    return await _getPostDiscussions(discussionType: "get_discussions_by_payout", limit: limit ?? 15, observer: observer, startAuthor: startAuthor, startPermlink: startPermlink, tag: tag, callback: callback, additionalQuery: additionalQuery ?? {});
  }

  /// Fetch the post discussions by votes.
  /// [limit] int, default value is `15`
  ///
  /// [startAuthor] String, Author of a psot where to start the list from `e.g dapplr`
  ///
  /// [startPermlink] String, Permlink of a post where to start the list from `e.g dapplr-is-now-hardfork-24-compatible-ios-updates-and-enhancements`
  ///
  /// [tag] String, community tag name or normal tags `e.g hive-102930`
  ///
  /// [observer] String, Requester username `e.g funnyman`
  ///
  /// The response will be passed in [callback] `eg. callback({dynmaic value}){}`
  Future<Map<String, dynamic>> getDiscussionsByVotes({int limit, String observer, String startAuthor, String startPermlink, String tag, Function callback, Map<String, dynamic> additionalQuery}) async {
    return await _getPostDiscussions(discussionType: "get_discussions_by_votes", limit: limit ?? 15, observer: observer, startAuthor: startAuthor, startPermlink: startPermlink, tag: tag, callback: callback, additionalQuery: additionalQuery ?? {});
  }

  /// Fetch the post discussions by feed.
  /// [limit] int, default value is `15`
  ///
  /// [startAuthor] String, Author of a psot where to start the list from `e.g dapplr`
  ///
  /// [startPermlink] String, Permlink of a post where to start the list from `e.g dapplr-is-now-hardfork-24-compatible-ios-updates-and-enhancements`
  ///
  /// [tag] String, community tag name or normal tags `e.g hive-102930`
  ///
  /// [observer] String, Requester username `e.g funnyman`
  ///
  /// The response will be passed in [callback] `eg. callback({dynmaic value}){}`
  Future<Map<String, dynamic>> getDiscussionsByFeed({int limit, String observer, String startAuthor, String startPermlink, String tag, Function callback, Map<String, dynamic> additionalQuery}) async {
    return await _getPostDiscussions(discussionType: "get_discussions_by_feed", limit: limit ?? 15, observer: observer, startAuthor: startAuthor, startPermlink: startPermlink, tag: tag, callback: callback, additionalQuery: additionalQuery ?? {});
  }
}
