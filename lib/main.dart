import 'package:flutter/material.dart';
import 'package:listview_issue/list_no_issue.dart';
import 'package:listview_issue/list_with_issue.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new AppBar(
            title: const Text('ListView issue'),
              bottom: new TabBar(
                tabs: [
                    new Tab(text: "Good"),
                    new Tab(text: "Bad"),
                  ]
              )
          ),
          body: new TabBarView(
              children: [
                new ListDemo1(),
                new ListDemo2()
              ]
          )
        )
    );
  }
}
