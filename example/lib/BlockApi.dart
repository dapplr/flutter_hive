import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hive/api/api.dart';

class Block extends StatefulWidget {
  @override
  _BlockState createState() => _BlockState();
}

class _BlockState extends State<Block> {
  dynamic getBlockHeader() async {
    var res = await hive.api.getBlockHeader(blockNum: 47877580);
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getBlock() async {
    var res = await hive.api.getBlock(blockNum: 47877580);
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic getOpsInBlock() async {
    var res = await hive.api.getOpsInBlock(blockNum: 47877580, onlyVirtual: false);
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
                getBlockHeader();
              },
              child: Text('getBlockHeader'),
            ),
            RaisedButton(
              onPressed: () {
                getBlock();
              },
              child: Text('getBlock'),
            ),
            RaisedButton(
              onPressed: () {
                getOpsInBlock();
              },
              child: Text('getOpsInBlock'),
            ),
          ],
        ),
      ],
    );
  }
}
