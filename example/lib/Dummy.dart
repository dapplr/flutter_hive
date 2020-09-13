import 'package:flutter/material.dart';
import 'package:flutter_hive/flutter_hive.dart';

class Dummy extends StatefulWidget {
  @override
  _DummyState createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  Hive hive = Hive();

  dynamic fetchAccounts() async {
    var res = await hive.api.getAccounts(value: ["funnyman"]);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  @override
  void initState() {
    fetchAccounts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
