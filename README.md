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

## Tags

### Get Trending Tags

```
var res = await hive.api.getTrendingTags(afterTag: "photography");
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Discussions By Trending

```
var res = await hive.api.getDiscussionsByTrending(startAuthor: "acidyo", startPermlink: "the-ocd-community", limit: 10);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Discussions By Created

```
var res = await hive.api.getDiscussionsByCreated(startAuthor: "acidyo", startPermlink: "the-ocd-community", limit: 10);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Discussions By Active

```
var res = await hive.api.getDiscussionsByActive(startAuthor: "acidyo", startPermlink: "the-ocd-community", limit: 10);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Discussions By Cashout

```
var res = await hive.api.getDiscussionsByCashout(startAuthor: "acidyo", startPermlink: "the-ocd-community", limit: 10);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Discussions By Payout

```
var res = await hive.api.getDiscussionsByPayout(startAuthor: "acidyo", startPermlink: "the-ocd-community", limit: 10);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Discussions By Votes

```
var res = await hive.api.getDiscussionsByVotes(startAuthor: "acidyo", startPermlink: "the-ocd-community", limit: 10);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Discussions By Hot

```
var res = await hive.api.getDiscussionsByHot(startAuthor: "acidyo", startPermlink: "the-ocd-community", limit: 10);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Discussions By Feed

```
var res = await hive.api.getDiscussionsByFeed(startAuthor: "acidyo", startPermlink: "the-ocd-community", limit: 10);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

## Blocks and transactions

### Get Block Header

```
var res = await hive.api.getBlockHeader(blockNum: 47877580);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Block

```
var res = await hive.api.getBlock(blockNum: 47877580);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get OpsInBlock

```
var res = await hive.api.getOpsInBlock(blockNum: 47877580, onlyVirtual: false);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

## Globals

### Get Config

```
var res = await hive.api.getConfig();
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
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
