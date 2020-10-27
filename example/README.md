# Flutter Hive

Dart APIs for HIVE blockchain. Namespaces are similar to the JavaScript APIs in [Hive.js](https://gitlab.syncad.com/hive/hive-js/-/tree/master)

# Documentation

- [Install](#install)
- [Basic Usage](#basic-usage)
- [Database API](#api)
  - [Subscriptions](#subscriptions)
  - [Tags](#tags)
  - [Blocks and transactions](#blocks-and-transactions)
  - [Globals](#globals)
  - [Keys](#keys)
  - [Accounts](#accounts)

# Install

Add this to your package's pubspec.yaml file

```
dependencies:
  flutter_hive: ^latest_version
```

# Basic Usage

```
import 'package:flutter_hive/flutter_hive.dart';

Hive hive = Hive();

var res = await hive.api.getChainProperties();

if (res["status"] == "ok") {
  //  success
  print(res["data"]);
} else {
  // error response
  print(res["error"]);
}

```

# API

## Subscriptions

### Set Subscribe Callback

```
hive.api.setSubscribeCallback(callback, clearFilter, function(err, result) {
  console.log(err, result);
});
```

### Set Pending Transaction Callback

```
hive.api.setPendingTransactionCallback(cb, function(err, result) {
  console.log(err, result);
});
```

### Set Block Applied Callback

```
hive.api.setBlockAppliedCallback(cb, function(err, result) {
  console.log(err, result);
});
```

### Cancel All Subscriptions

```
hive.api.cancelAllSubscriptions(function(err, result) {
  console.log(err, result);
});
```

## Tags

### Get Trending Tags

```
hive.api.getTrendingTags(afterTag, limit, function(err, result) {
  console.log(err, result);
});
```

### Get Discussions By Trending

```
hive.api.getDiscussionsByTrending(query, function(err, result) {
  console.log(err, result);
});
```

### Get Discussions By Created

```
hive.api.getDiscussionsByCreated(query, function(err, result) {
  console.log(err, result);
});
```

### Get Discussions By Active

```
hive.api.getDiscussionsByActive(query, function(err, result) {
  console.log(err, result);
});
```

### Get Discussions By Cashout

```
hive.api.getDiscussionsByCashout(query, function(err, result) {
  console.log(err, result);
});
```

### Get Discussions By Payout

```
hive.api.getDiscussionsByPayout(query, function(err, result) {
  console.log(err, result);
});
```

### Get Discussions By Votes

```
hive.api.getDiscussionsByVotes(query, function(err, result) {
  console.log(err, result);
});
```

### Get Discussions By Children

```
hive.api.getDiscussionsByChildren(query, function(err, result) {
  console.log(err, result);
});
```

### Get Discussions By Hot

```
hive.api.getDiscussionsByHot(query, function(err, result) {
  console.log(err, result);
});
```

### Get Discussions By Feed

```
hive.api.getDiscussionsByFeed(query, function(err, result) {
  console.log(err, result);
});
```

### Get Discussions By Blog

```
hive.api.getDiscussionsByBlog(query, function(err, result) {
  console.log(err, result);
});
```

### Get Discussions By Comments

```
hive.api.getDiscussionsByComments(query, function(err, result) {
  console.log(err, result);
});
```

## Blocks and transactions

### Get Block Header

```
hive.api.getBlockHeader(blockNum, function(err, result) {
  console.log(err, result);
});
```

### Get Block

```
hive.api.getBlock(blockNum, function(err, result) {
  console.log(err, result);
});
```

### Get State

```
hive.api.getState(path, function(err, result) {
  console.log(err, result);
});
```

### Get Trending Categories

```
hive.api.getTrendingCategories(after, limit, function(err, result) {
  console.log(err, result);
});
```

### Get Best Categories

```
hive.api.getBestCategories(after, limit, function(err, result) {
  console.log(err, result);
});
```

### Get Active Categories

```
hive.api.getActiveCategories(after, limit, function(err, result) {
  console.log(err, result);
});
```

### Get Recent Categories

```
hive.api.getRecentCategories(after, limit, function(err, result) {
  console.log(err, result);
});
```

## Globals

### Get Config

```
hive.api.getConfig(function(err, result) {
  console.log(err, result);
});
```

### Get Dynamic Global Properties

```
hive.api.getDynamicGlobalProperties(function(err, result) {
  console.log(err, result);
});
```

### Get Chain Properties

```
hive.api.getChainProperties(function(err, result) {
  console.log(err, result);
});
```

### Get Feed History

```
hive.api.getFeedHistory(function(err, result) {
  console.log(err, result);
});
```

### Get Current Median History Price

```
hive.api.getCurrentMedianHistoryPrice(function(err, result) {
  console.log(err, result);
});
```

### Get Hardfork Version

```
hive.api.getHardforkVersion(function(err, result) {
  console.log(err, result);
});
```

### Get Next Scheduled Hardfork

```
hive.api.getNextScheduledHardfork(function(err, result) {
  console.log(err, result);
});
```

### Get Reward Fund

```
hive.api.getRewardFund(name, function(err, result) {
  console.log(err, result);
});
```

### Get Vesting Delegations

```
hive.api.getVestingDelegations(account, from, limit, function(err, result) {
  console.log(err, result);
});
```

## Keys

### Get Key References

```
hive.api.getKeyReferences(key, function(err, result) {
  console.log(err, result);
});
```

## Accounts

### Get Accounts

```
hive.api.getAccounts(names, function(err, result) {
  console.log(err, result);
});
```

### Get Account References

```
hive.api.getAccountReferences(accountId, function(err, result) {
  console.log(err, result);
});
```

### Lookup Account Names

```
hive.api.lookupAccountNames(accountNames, function(err, result) {
  console.log(err, result);
});
```

### Lookup Accounts

```
hive.api.lookupAccounts(lowerBoundName, limit, function(err, result) {
  console.log(err, result);
});
```

### Get Account Count

```
hive.api.getAccountCount(function(err, result) {
  console.log(err, result);
});
```

### Get Conversion Requests

```
hive.api.getConversionRequests(accountName, function(err, result) {
  console.log(err, result);
});
```

### Get Account History

```
hive.api.getAccountHistory(account, from, limit, operation_filter_low, operation_filter_high, function(err, result) {
  console.log(err, result);
});
```

### Get Owner History

```
hive.api.getOwnerHistory(account, function(err, result) {
  console.log(err, result);
});
```

### Get Recovery Request

```
hive.api.getRecoveryRequest(account, function(err, result) {
  console.log(err, result);
});
```
