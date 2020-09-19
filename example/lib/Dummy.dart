import 'package:flutter/material.dart';
import 'package:flutter_hive/api/api.dart';
import 'package:flutter_hive/flutter_hive.dart';

class Dummy extends StatefulWidget {
  @override
  _DummyState createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  Hive hive = Hive();

  dynamic fetchAccounts() async {
    var res = await hive.api.getAccounts(users: ["funnyman"]);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic fetchDiscussionsByTrending() async {
    var res = await hive.api.getDiscussionsByTrending(startAuthor: "acidyo", startPermlink: "the-ocd-community", limit: 10);
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  dynamic fetchTrendingTags() async {
    var res = await hive.api.getTrendingTags(afterTag: "photography");
    if (res["status"] == "ok") {
      return res["data"];
    }
    return null;
  }

  @override
  void initState() {
    fetchAccounts();
    fetchDiscussionsByTrending();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
