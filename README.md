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
  - [Markets](#markets)

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
var res = await hive.api.getDynamicGlobalProperties();
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Chain Properties

```
var res = await hive.api.getChainProperties();
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Feed History

```
var res = await hive.api.getFeedHistory();
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Current Median History Price

```
var res = await hive.api.getCurrentMedianHistoryPrice();
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Hardfork Version

```
var res = await hive.api.getHardforkVersion();
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Next Scheduled Hardfork

```
var res = await hive.api.getNextScheduledHardfork();
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Reward Fund

```
var res = await hive.api.getRewardFund();
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Vesting Delegations

```
var res = await hive.api.getVestingDelegations();
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

## Keys

### Get Key References

```
var res = await hive.api.getKeyReferences(keys:["STM7peJ4EfsE4yBrTcRqPwcrzuFyhHEZkHyaJMX7nscW78cEB1YjD"]);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

## Accounts

### Get Accounts

```
var res = await hive.api.getAccounts(users:["dapplr", "funnyman"]);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Lookup Account Names

```
var res = await hive.api.lookupAccountNames(accountNames:["dapplr", "funnyman"]);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Lookup Accounts

```
var res = await hive.api.lookupAccounts(lowerBoundName: "dap", limit: 30);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Account Count

```
var res = await hive.api.getAccountCount();
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Conversion Requests

```
var res = await hive.api.getConversionRequests(accountName: "dapplr");
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Account History

```
var res = await hive.api.getAccountHistory(account: "dapplr", from: 5020, limit: 1000);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Owner History

```
var res = await hive.api.getOwnerHistory(account: "dapplr");
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Recovery Request

```
var res = await hive.api.getConversionRequests(account: "dapplr");
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

## Markets

### Get Order Book

```
var res = await hive.api.getOrderBook(limit: 20);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Open Orders

```
var res = await hive.api.getOpenOrders(owner: "funnyman");
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```

### Get Market Order Book

```
var res = await hive.api.getMarketOrderBook(limit: 20);
if (res["status"] == "ok") {
  // Do your stuff. Response data - res["data"]
} else {
  // Handle error. Response data - res["error"]
}
```
