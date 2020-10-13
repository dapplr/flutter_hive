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
          runSpacing: 6,
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
          ],
        ),
      ],
    );
  }
}
