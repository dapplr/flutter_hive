import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hive/api/api.dart';

class Authority extends StatefulWidget {
  @override
  _AuthorityState createState() => _AuthorityState();
}

class _AuthorityState extends State<Authority> {
  dynamic getTransaction() async {
    var res = await hive.api.getTransaction(trxId: '73fcec50f9c83521df4c9714f5aebd34ce3436e4');
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
          "Authority Api",
          style: TextStyle(fontSize: 18),
        ),
        Wrap(
          spacing: 6,
          children: [
            RaisedButton(
              onPressed: () {
                getTransaction();
              },
              child: Text('getTransaction'),
            ),
          ],
        ),
      ],
    );
  }
}
