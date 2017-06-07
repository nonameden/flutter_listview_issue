import 'package:flutter/material.dart';

class ListDemo2 extends StatefulWidget {
  const ListDemo2({ Key key }) : super(key: key);

  static const String routeName = '/material/list';

  @override
  _ListDemo2State createState() => new _ListDemo2State();
}

class _ListDemo2State extends State<ListDemo2> {

  List<String> items = <String>[
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
    'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U'
  ];

  Widget buildListTile(BuildContext context, String item) {
    return new AspectRatio(
        aspectRatio: 4.0 / 3.0,
        child: new Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: FractionalOffset.centerLeft,
            child: new Text('This item represents $item.')
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    Iterable<Widget> listTiles = items.map((String item) =>
        buildListTile(context, item));

    return new ListView(
        children: listTiles.toList()
    );
  }
}