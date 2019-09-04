import 'package:flutter/material.dart';
import 'package:clone_bbc_news/custom_expansion_tile.dart' as custom;
import 'class/DrawerMenuList.dart';
import 'class/helper.dart';

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
        color: childMenuBackgroundColor,
        child: ListTile(
            onTap: (){
              //todo:here are the Drawer button action
              print(t.title);
            },
            title: Text(t.title,style: childMenuStyle,)),
      );

    return Container(
      child:  custom.ExpansionTile(
        iconColor: drawerIconColor,
        key:  PageStorageKey<int>(3),
        title:  Text(t.title,style: parantMenuStyle),
        children: t.children.map(_buildTiles).toList(),
      ),
    );
  }
}