import 'package:flutter/material.dart';
import 'package:clone_bbc_news/custom_expansion_tile.dart' as custom;
import 'cat.dart';

class DrawerList extends StatefulWidget {
  final cat cats;
  DrawerList(this.cats);
  @override
  _DrawerListState createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  bool ns = false;

  @override
  Widget build(BuildContext context) {
    return Container(child: _buildTiles(widget.cats));
  }
  Widget _buildTiles(cat t) {

    if (t.children.isEmpty)
      return Container(
        height: 40,
        color: Colors.black12,
        child: ListTile(
            onTap: (){
              print(t.title);
            },
            title: Text(t.title,style: TextStyle(color: Colors.white70),)),
      );

    return Container(
      child:  custom.ExpansionTile(
        iconColor: Colors.white,
        key:  PageStorageKey<int>(3),
        title:  Text(t.title,style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold)),
        children: t.children.map(_buildTiles).toList(),
      ),
    );
  }
}