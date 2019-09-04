import 'package:flutter/material.dart';
import 'package:clone_bbc_news/class/helper.dart';

class PopularPage extends StatefulWidget {
  @override
  _PopularPageState createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          //todo: top design list news
          Card(
            child: InkWell(
              onTap: null,
              child: Container(
                height: 100,
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Image.network(
                          'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                          width: size.width / 2 - 30,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            height: 25,
                            width: 25,
                            color: primaryColor,
                            child: Center(
                              child: Text('1',
                                  style: TextStyle(
                                      color: videoTextColors)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ',
                            style: titleStyle,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "2m",
                                style: TextStyle(color: timeColors),
                              ),
                              SizedBox(
                                width: 20,
                                child: Text('  |', style: titleStyle),
                              ),
                              Text(
                                "Dhaka",
                                style: TextStyle(color: primaryColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
