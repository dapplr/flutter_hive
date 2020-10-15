import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hive/api/api.dart';

class GlobalProperties extends StatefulWidget {
  @override
  _GlobalPropertiesState createState() => _GlobalPropertiesState();
}

class _GlobalPropertiesState extends State<GlobalProperties> {
  dynamic getConfig() async {
    var res = await hive.api.getConfig();
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getDynamicGlobalProperties() async {
    var res = await hive.api.getDynamicGlobalProperties();
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getChainProperties() async {
    var res = await hive.api.getChainProperties();
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getFeedHistory() async {
    var res = await hive.api.getFeedHistory();
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getCurrentMedianHistoryPrice() async {
    var res = await hive.api.getCurrentMedianHistoryPrice();
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getHardforkVersion() async {
    var res = await hive.api.getHardforkVersion();
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getNextScheduledHardfork() async {
    var res = await hive.api.getNextScheduledHardfork();
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getRewardFund() async {
    var res = await hive.api.getRewardFund(name: "post");
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getVestingDelegations() async {
    var res = await hive.api.getVestingDelegations(account: "dapplr", from: "funnyman", limit: 1);
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
          "Global Properties Api",
          style: TextStyle(fontSize: 18),
        ),
        Wrap(
          spacing: 6,
          children: [
            RaisedButton(
              onPressed: () {
                getConfig();
              },
              child: Text('getConfig'),
            ),
            RaisedButton(
              onPressed: () {
                getDynamicGlobalProperties();
              },
              child: Text('getDynamicGlobalProperties'),
            ),
            RaisedButton(
              onPressed: () {
                getChainProperties();
              },
              child: Text('getChainProperties'),
            ),
            RaisedButton(
              onPressed: () {
                getFeedHistory();
              },
              child: Text('getFeedHistory'),
            ),
            RaisedButton(
              onPressed: () {
                getCurrentMedianHistoryPrice();
              },
              child: Text('getCurrentMedianHistoryPrice'),
            ),
            RaisedButton(
              onPressed: () {
                getHardforkVersion();
              },
              child: Text('getHardforkVersion'),
            ),
            RaisedButton(
              onPressed: () {
                getNextScheduledHardfork();
              },
              child: Text('getNextScheduledHardfork'),
            ),
            RaisedButton(
              onPressed: () {
                getRewardFund();
              },
              child: Text('getRewardFund'),
            ),
            RaisedButton(
              onPressed: () {
                getVestingDelegations();
              },
              child: Text('getVestingDelegations'),
            ),
          ],
        ),
      ],
    );
  }
}
