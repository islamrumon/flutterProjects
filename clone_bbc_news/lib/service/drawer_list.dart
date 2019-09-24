import 'package:flutter/material.dart';
import 'package:clone_bbc_news/class/custom_expansion_tile.dart' as custom;
import '../class/drawer_menu_list.dart';
import '../helpers/helper.dart';

class DrawerList extends StatefulWidget {
  final Cat cats;
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
  Widget _buildTiles(Cat cat) {

    if (cat.children.isEmpty)
      return Container(
        height: 40,
        color: childMenuBackgroundColor,
        child: ListTile(
            onTap: (){
              //todo:here are the Drawer button action
              print(cat.title);
            },
            title: Text(cat.title,style: childMenuStyle,)),
      );

    return Container(
      child:  custom.ExpansionTile(
        iconColor: drawerIconColor,
        key:  PageStorageKey<int>(3),
        title:  Text(cat.title,style: parantMenuStyle),
        children: cat.children.map(_buildTiles).toList(),
      ),
    );
  }
}