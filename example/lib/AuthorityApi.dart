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

  dynamic getTransactionHex() async {
    var res = await hive.api.getTransactionHex(trx: {
      "trx": {
        "ref_block_num": 1097,
        "ref_block_prefix": 2181793527,
        "expiration": "2016-03-24T18:00:21",
        "operations": [
          {
            "type": "pow_operation",
            "value": {
              "worker_account": "cloop3",
              "block_id": "00000449f7860b82b4fbe2f317c670e9f01d6d9a",
              "nonce": 3899,
              "work": {
                "worker": "STM7P5TDnA87Pj9T4mf6YHrhzjC1KbPZpNxLWCcVcHxNYXakpoT4F",
                "input": "ae8e7c677119d22385f8c48026fee7aad7bba693bf788d7f27047f40b47738c0",
                "signature": "1f38fe9a3f9989f84bd94aa5bbc88beaf09b67f825aa4450cf5105d111149ba6db560b582c7dbb026c7fc9c2eb5051815a72b17f6896ed59d3851d9a0f9883ca7a",
                "work": "000e7b209d58f2e64b36e9bf12b999c6c7af168cc3fc41eb7f8a4bf796c174c3"
              },
              "props": {
                "account_creation_fee": {"amount": "100000", "precision": 3, "nai": "@@000000021"},
                "maximum_block_size": 131072,
                "hbd_interest_rate": 1000
              }
            }
          }
        ],
        "extensions": [],
        "signatures": []
      }
    });
    print(res);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic verifyAuthority() async {
    var res = await hive.api.verifyAuthority(trx: {
      "trx": {
        "ref_block_num": 1097,
        "ref_block_prefix": 2181793527,
        "expiration": "2016-03-24T18:00:21",
        "operations": [
          [
            "pow",
            {
              "worker_account": "cloop3",
              "block_id": "00000449f7860b82b4fbe2f317c670e9f01d6d9a",
              "nonce": 3899,
              "work": {
                "worker": "STM7P5TDnA87Pj9T4mf6YHrhzjC1KbPZpNxLWCcVcHxNYXakpoT4F",
                "input": "ae8e7c677119d22385f8c48026fee7aad7bba693bf788d7f27047f40b47738c0",
                "signature": "1f38fe9a3f9989f84bd94aa5bbc88beaf09b67f825aa4450cf5105d111149ba6db560b582c7dbb026c7fc9c2eb5051815a72b17f6896ed59d3851d9a0f9883ca7a",
                "work": "000e7b209d58f2e64b36e9bf12b999c6c7af168cc3fc41eb7f8a4bf796c174c3"
              },
              "props": {
                "account_creation_fee": {"amount": "100000", "precision": 3, "nai": "@@000000021"},
                "maximum_block_size": 131072,
                "hbd_interest_rate": 1000
              }
            }
          ]
        ],
        "extensions": [],
        "signatures": []
      }
    });
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
                getTransactionHex();
              },
              child: Text('getTransactionHex'),
            ),
            RaisedButton(
              onPressed: () {
                getTransaction();
              },
              child: Text('getTransaction'),
            ),
            RaisedButton(
              onPressed: () {
                verifyAuthority();
              },
              child: Text('verifyAuthority'),
            ),
          ],
        ),
      ],
    );
  }
}
