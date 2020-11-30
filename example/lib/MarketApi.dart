import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hive/api/api.dart';

class Market extends StatefulWidget {
  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  dynamic getOrderBook() async {
    var res = await hive.api.getOrderBook(limit: 20);
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getOpenOrders() async {
    var res = await hive.api.getOpenOrders(owner: "funnyman");
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getMarketOrderBook() async {
    var res = await hive.api.getMarketOrderBook(limit: 20);
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getMarketHistoryBuckets() async {
    var res = await hive.api.getMarketHistoryBuckets();
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Market Api",
          style: TextStyle(fontSize: 18),
        ),
        Wrap(
          spacing: 6,
          children: [
            RaisedButton(
              onPressed: () {
                getOrderBook();
              },
              child: Text('getOrderBook'),
            ),
            RaisedButton(
              onPressed: () {
                getOrderBook();
              },
              child: Text('getOpenOrders'),
            ),
            RaisedButton(
              onPressed: () {
                getOrderBook();
              },
              child: Text('getMarketOrderBook'),
            ),
            RaisedButton(
              onPressed: () {
                getMarketHistoryBuckets();
              },
              child: Text('getMarketHistoryBuckets'),
            ),
          ],
        ),
      ],
    );
  }
}
