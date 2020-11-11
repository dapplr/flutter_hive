import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hive/api/api.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  dynamic getAccounts() async {
    var res = await hive.api.getAccounts(users: ["dapplr", "funnyman"]);
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic lookupAccountNames() async {
    var res = await hive.api.lookupAccountNames(accountNames: ["dapplr", "dapplr1212"]);
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic lookupAccounts() async {
    var res = await hive.api.lookupAccounts(lowerBoundName: "dap", limit: 30);
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getAccountCount() async {
    var res = await hive.api.getAccountCount();
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getConversionRequests() async {
    var res = await hive.api.getConversionRequests(accountName: "funnyman");
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
          "Accounts Api",
          style: TextStyle(fontSize: 18),
        ),
        Wrap(
          spacing: 6,
          children: [
            RaisedButton(
              onPressed: () {
                getAccounts();
              },
              child: Text('getAccounts'),
            ),
            RaisedButton(
              onPressed: () {
                lookupAccountNames();
              },
              child: Text('lookupAccountNames'),
            ),
            RaisedButton(
              onPressed: () {
                lookupAccounts();
              },
              child: Text('lookupAccounts'),
            ),
            RaisedButton(
              onPressed: () {
                getAccountCount();
              },
              child: Text('getAccountCount'),
            ),
            RaisedButton(
              onPressed: () {
                getConversionRequests();
              },
              child: Text('getConversionRequests'),
            ),
          ],
        ),
      ],
    );
  }
}
