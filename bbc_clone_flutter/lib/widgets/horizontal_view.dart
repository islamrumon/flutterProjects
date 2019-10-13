import 'package:flutter/material.dart';
import 'package:clone_bbc_news/helpers/helper.dart';

class HorizonCard extends StatefulWidget {
  @override
  _HorizonCardState createState() => _HorizonCardState();
}

class _HorizonCardState extends State<HorizonCard> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      height: 180,
      color: blackColor,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: size.width /2 -30,
            child: Card(
              elevation: 4,
              child: InkWell(
                onTap: null,
                child: Hero(
                  tag: 'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ মৃত সাঈদমৃত সাঈদ 1',
                  child: Container(
                    color: blackColor,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Image.network(
                              'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 25,
                                width: 70,
                                color: blackColor,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.play_arrow,
                                      color: videoTextColors,
                                    ),
                                    Text('01.50',
                                        style: TextStyle(color: videoTextColors)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: blackColor,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //topics
                              //title
                              Text(
                                'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ',
                                style:
                                gridTitleStyle,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('2h ago', style: gridTimeStyle),
                                  SizedBox(
                                    child: Text(
                                      '  |  ',
                                      style: TextStyle(color: textColors),
                                    ),
                                  ),
                                  Text('USA & CANADA', style: gridTopicStyle),
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
            ),
          ),
          Container(
            width: size.width /2 -30,
            child: Card(
              elevation: 4,
              child: InkWell(
                onTap: null,
                child: Hero(
                  tag: 'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ মৃত সাঈদমৃত সাঈদ 2',
                  child: Container(
                    color: blackColor,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Image.network(
                              'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 25,
                                width: 70,
                                color: blackColor,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.play_arrow,
                                      color: videoTextColors,
                                    ),
                                    Text('01.50',
                                        style: TextStyle(color: videoTextColors)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: blackColor,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //topics
                              //title
                              Text(
                                'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ',
                                style:
                                gridTitleStyle,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('2h ago', style: gridTimeStyle),
                                  SizedBox(
                                    child: Text(
                                      '  |  ',
                                      style: TextStyle(color: textColors),
                                    ),
                                  ),
                                  Text('USA & CANADA', style: gridTopicStyle),
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
            ),
          ),
          Container(
            width: size.width /2 -30,
            child: Card(
              elevation: 4,
              child: InkWell(
                onTap: null,
                child: Hero(
                  tag: 'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ মৃত সাঈদমৃত সাঈদ 3',
                  child: Container(
                    color: blackColor,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Image.network(
                              'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 25,
                                width: 70,
                                color: blackColor,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.play_arrow,
                                      color: videoTextColors,
                                    ),
                                    Text('01.50',
                                        style: TextStyle(color: videoTextColors)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: blackColor,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //topics
                              //title
                              Text(
                                'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ',
                                style:
                                gridTitleStyle,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('2h ago', style: gridTimeStyle),
                                  SizedBox(
                                    child: Text(
                                      '  |  ',
                                      style: TextStyle(color: textColors),
                                    ),
                                  ),
                                  Text('USA & CANADA', style: gridTopicStyle),
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
            ),
          ),
          Container(
            width: size.width /2 -30,
            child: Card(
              elevation: 4,
              child: InkWell(
                onTap: null,
                child: Hero(
                  tag: 'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ মৃত সাঈদমৃত সাঈদ 4',
                  child: Container(
                    color: blackColor,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Image.network(
                              'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 25,
                                width: 70,
                                color: blackColor,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.play_arrow,
                                      color: videoTextColors,
                                    ),
                                    Text('01.50',
                                        style: TextStyle(color: videoTextColors)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: blackColor,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //topics
                              //title
                              Text(
                                'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ',
                                style:
                                gridTitleStyle,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('2h ago', style: gridTimeStyle),
                                  SizedBox(
                                    child: Text(
                                      '  |  ',
                                      style: TextStyle(color: textColors),
                                    ),
                                  ),
                                  Text('USA & CANADA', style: gridTopicStyle),
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
            ),
          ),
          Container(
            width: size.width /2 -30,
            child: Card(
              elevation: 4,
              child: InkWell(
                onTap: null,
                child: Hero(
                  tag: 'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ মৃত সাঈদমৃত সাঈদ 5',
                  child: Container(
                    color: blackColor,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Image.network(
                              'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 25,
                                width: 70,
                                color: blackColor,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.play_arrow,
                                      color: videoTextColors,
                                    ),
                                    Text('01.50',
                                        style: TextStyle(color: videoTextColors)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: blackColor,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //topics
                              //title
                              Text(
                                'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ',
                                style:
                                gridTitleStyle,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('2h ago', style: gridTimeStyle),
                                  SizedBox(
                                    child: Text(
                                      '  |  ',
                                      style: TextStyle(color: textColors),
                                    ),
                                  ),
                                  Text('USA & CANADA', style: gridTopicStyle),
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
            ),
          ),
          Container(
            width: size.width /2 -30,
            child: Card(
              elevation: 4,
              child: InkWell(
                onTap: null,
                child: Hero(
                  tag: 'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ মৃত সাঈদমৃত সাঈদ 6',
                  child: Container(
                    color: blackColor,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Image.network(
                              'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 25,
                                width: 70,
                                color: blackColor,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.play_arrow,
                                      color: videoTextColors,
                                    ),
                                    Text('01.50',
                                        style: TextStyle(color: videoTextColors)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: blackColor,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //topics
                              //title
                              Text(
                                'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ',
                                style:
                                gridTitleStyle,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('2h ago', style: gridTimeStyle),
                                  SizedBox(
                                    child: Text(
                                      '  |  ',
                                      style: TextStyle(color: textColors),
                                    ),
                                  ),
                                  Text('USA & CANADA', style: gridTopicStyle),
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
            ),
          ),
          Container(
            width: size.width /2 -30,
            child: Card(
              elevation: 4,
              child: InkWell(
                onTap: null,
                child: Hero(
                  tag: 'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ মৃত সাঈদমৃত সাঈদ 7',
                  child: Container(
                    color: blackColor,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Image.network(
                              'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 25,
                                width: 70,
                                color: blackColor,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.play_arrow,
                                      color: videoTextColors,
                                    ),
                                    Text('01.50',
                                        style: TextStyle(color: videoTextColors)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: blackColor,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //topics
                              //title
                              Text(
                                'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ',
                                style:
                                gridTitleStyle,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('2h ago', style: gridTimeStyle),
                                  SizedBox(
                                    child: Text(
                                      '  |  ',
                                      style: TextStyle(color: textColors),
                                    ),
                                  ),
                                  Text('USA & CANADA', style: gridTopicStyle),
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
            ),
          ),
          Container(
            width: size.width /2 -30,
            child: Card(
              elevation: 4,
              child: InkWell(
                onTap: null,
                child: Hero(
                  tag: 'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ মৃত সাঈদমৃত সাঈদ 8',
                  child: Container(
                    color: blackColor,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Image.network(
                              'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 25,
                                width: 70,
                                color: blackColor,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.play_arrow,
                                      color: videoTextColors,
                                    ),
                                    Text('01.50',
                                        style: TextStyle(color: videoTextColors)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: blackColor,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //topics
                              //title
                              Text(
                                'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ',
                                style:
                                gridTitleStyle,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('2h ago', style: gridTimeStyle),
                                  SizedBox(
                                    child: Text(
                                      '  |  ',
                                      style: TextStyle(color: textColors),
                                    ),
                                  ),
                                  Text('USA & CANADA', style: gridTopicStyle),
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
            ),
          ),
          Container(
            width: size.width /2 -30,
            child: Card(
              elevation: 4,
              child: InkWell(
                onTap: null,
                child: Hero(
                  tag: 'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ মৃত সাঈদমৃত সাঈদ 9',
                  child: Container(
                    color: blackColor,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Image.network(
                              'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 25,
                                width: 70,
                                color: blackColor,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.play_arrow,
                                      color: videoTextColors,
                                    ),
                                    Text('01.50',
                                        style: TextStyle(color: videoTextColors)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: blackColor,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //topics
                              //title
                              Text(
                                'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ',
                                style:
                                gridTitleStyle,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('2h ago', style: gridTimeStyle),
                                  SizedBox(
                                    child: Text(
                                      '  |  ',
                                      style: TextStyle(color: textColors),
                                    ),
                                  ),
                                  Text('USA & CANADA', style: gridTopicStyle),
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
            ),
          ),
        ],
      ),
    );
  }
}
