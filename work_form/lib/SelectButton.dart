import 'package:flutter/material.dart';
import 'ReuseSelectorButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SelectButton extends StatefulWidget {
  @override
  _SelectButtonState createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {

  List<String> selectorStrign = [
    'Select 1',
    'Select 2',
    'Select 2',
    'Select 4',
    'Select 5',
    'Select 6',
    'Select 7',
    'Select 8',
    'Select 9',
  ];
  List<bool> selectorAction = [false, true, true, false, true, false,false, true, true];
  List<Icon> selectorIcon = [
    Icon(
      FontAwesomeIcons.filePdf,
      size: 34,
      color: Colors.blueAccent,
    ),
    Icon(
      FontAwesomeIcons.wordpress,
      size: 34,
      color: Colors.blueAccent,
    ),
    Icon(
      FontAwesomeIcons.music,
      size: 34,
      color: Colors.blueAccent,
    ),
    Icon(
      FontAwesomeIcons.gavel,
      size: 34,
      color: Colors.blueAccent,
    ),
    Icon(
      FontAwesomeIcons.expand,
      size: 34,
      color: Colors.blueAccent,
    ),
    Icon(
      FontAwesomeIcons.motorcycle,
      size: 34,
      color: Colors.blueAccent,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> children=  [];
    List<Widget> widget =[];
    for(int i=0; i<selectorStrign.length; i++){
      children.add( ReuseSelectorButton(
          size: size,
          onTap: (){
            setState(() {
              selectorAction[i] = !selectorAction[i];
              print(selectorAction[i]);
            });
          },
          image: Image(
            image: AssetImage('img/$i.jpg'),
          ),
          name: selectorStrign[i],
          active: selectorAction[i],
        ));
//todo:there are select button lemit 18
      if(i==3 || i==7 || i==11|| i== 15 || i==selectorStrign.length-1){
         widget.add(Row(
           children: children,
         ));
         children = [];
       }
    }
    return Container(child: Column(
      children:widget,

    ),);
  }
}
