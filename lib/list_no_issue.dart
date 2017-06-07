import 'package:flutter/material.dart';

class ListDemo1 extends StatefulWidget {
  const ListDemo1({ Key key }) : super(key: key);

  static const String routeName = '/material/list';

  @override
  _ListDemo1State createState() => new _ListDemo1State();
}

class _ListDemo1State extends State<ListDemo1> {

  List<String> items = <String>[
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
    'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U','A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
    'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U','A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
    'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U','A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
    'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U','A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
    'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U'
  ];

  Widget buildListTile(BuildContext context, String item) {
    return new Container(
        height: 272.0,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        alignment: FractionalOffset.centerLeft,
        child: new Text('This item represents $item.')
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