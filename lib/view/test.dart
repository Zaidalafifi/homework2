import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("zaid"),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("widget one"),
              ),
              Tab(
                child: Text("widget tow"),
              ),
              Tab(
                child: Text("widget three"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(child: Column(children: [Text("zaid"), Text("zaid")])),
            Container(
              width: double.infinity,
              child: Text("Container one"),
              color: Colors.red,
            ),
            Container(child: Column(children: [Text("zaid"), Text("zaid")])),
            Container(
              width: double.infinity,
              child: Text("Container tow"),
              color: Colors.blue,
            ),
            Container(child: Column(children: [Text("zaid"), Text("zaid")])),
            Container(
              width: double.infinity,
              child: Text("Container tow"),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
