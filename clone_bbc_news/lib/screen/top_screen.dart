import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clone_bbc_news/helpers/helper.dart';
import 'package:clone_bbc_news/widgets/horizontal_view.dart';
import 'package:clone_bbc_news/screen/single_screen.dart';

class TopStories extends StatefulWidget {
  @override
  _TopStoriesState createState() => _TopStoriesState();
}

class _TopStoriesState extends State<TopStories> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
        Column(
          children: <Widget>[
            //Todo:this is full newslayout
            Card(
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext conttext) => SingleScreen()));
                },
                child: Container(
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.network(
                        'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                        height: 200,
                        width: size.width,
                        fit: BoxFit.cover,
                      ),
                      //this is Title
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ',
                            style: titleStyle,
                          ),
                        ),
                      ),
                      //this is for time or topic

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "2m",
                              style: TextStyle(color: timeColors),
                            ),
                            SizedBox(
                              width: 20,
                              child: Text('  |'),
                            ),
                            Text(
                              "Dhaka",
                              style: TextStyle(color: primaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //todo:Section Heder without action
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Top News",
                    style: headText,
                  )),
            ),
            //Todo:List view news
//            Card(
//              child: InkWell(
//                onTap: (){
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (BuildContext conttext) => SingleScreen()));
//                },
//                child: Container(
//                  height: 100,
//                  child: Row(
//                    children: <Widget>[
//                      Image.network(
//                        'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
//                        width: size.width / 2 - 30,
//                        fit: BoxFit.cover,
//                      ),
//                      SizedBox(
//                        width: 10,
//                      ),
//                      Expanded(
//                        child: Column(
//                          mainAxisAlignment: MainAxisAlignment.spaceAround,
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: <Widget>[
//                            Text(
//                              'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ',
//                              style: titlastyle,
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Text(
//                                  "2m",
//                                  style: TextStyle(color: timeColors),
//                                ),
//                                SizedBox(
//                                  width: 20,
//                                  child: Text('  |'),
//                                ),
//                                Text(
//                                  "Dhaka",
//                                  style: TextStyle(color: primaryColor),
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
            //todo:topics section design
//            FlatButton(
//              onPressed: null,
//              child: Row(
//                crossAxisAlignment: CrossAxisAlignment.center,
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  Text(
//                    'Ashia',
//                    style: topicsText,
//                  ),
//                  SizedBox(
//                    width: 10,
//                  ),
//                  Icon(
//                    Icons.arrow_forward_ios,
//                    color: primaryColor,
//                    size: 16,
//                  ),
//                ],
//              ),
//            ),
//            //Todo:List view news only title
//            Card(
//              child: InkWell(
//                onTap: null,
//                child: Container(
//                  height: 100,
//                  child: Row(
//                    children: <Widget>[
//                      Image.network(
//                        'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
//                        width: size.width / 2 - 30,
//                        fit: BoxFit.cover,
//                      ),
//                      SizedBox(
//                        width: 10,
//                      ),
//                      Expanded(
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: <Widget>[
//                            Text(
//                              'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ',
//                              style: titlastyle,
//                            ),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//            //Todo:List view news Video title
//            Card(
//              child: InkWell(
//                onTap: null,
//                child: Container(
//                  height: 100,
//                  color: blackColor,
//                  child: Row(
//                    children: <Widget>[
//                      Stack(
//                        children: <Widget>[
//                          Image.network(
//                            'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
//                            width: size.width / 2 - 30,
//                            fit: BoxFit.cover,
//                          ),
//                          Positioned(
//                            bottom: 0,
//                            left: 0,
//                            child: Container(
//                              height: 25,
//                              width: 70,
//                              color: blackColor,
//                              child: Container(
//                                child: Row(
//                                  children: <Widget>[
//                                    Icon(
//                                      Icons.play_arrow,
//                                      color: videoTextColors,
//                                    ),
//                                    Text('00.50',
//                                        style: TextStyle(
//                                            color: videoTextColors)),
//                                  ],
//                                ),
//                              ),
//                            ),
//                          ),
//                        ],
//                      ),
//                      SizedBox(
//                        width: 10,
//                      ),
//                      Expanded(
//                        child: Column(
//                          mainAxisAlignment: MainAxisAlignment.spaceAround,
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: <Widget>[
//                            Text(
//                              'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ',
//                              style: detailVideoStyle,
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Text(
//                                  "2m",
//                                  style: TextStyle(color: timeColors),
//                                ),
//                                SizedBox(
//                                  width: 20,
//                                  child: Text('  |', style: detailVideoStyle),
//                                ),
//                                Text(
//                                  "Dhaka",
//                                  style: detailVideoStyle,
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//            //Todo:this is Big adds banaer
//            Container(
//              height: 300,
//              width: size.width,
//              child: InkWell(
//                onTap: null,
//                child: Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.end,
//                    children: <Widget>[
//                      Text("Adverising", style: addsTextStyle),
//                      Image.network(
//                        'https://busycreator.com/wp-content/uploads/2015/07/smartAppBanner-1280x720@2x.png',
//                        width: size.width,
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//            //Todo:this is fullNews with Details
//            Card(
//              elevation: 4,
//              child: InkWell(
//                onTap: null,
//                child: Container(
//                  height: 340,
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Container(
//                        decoration: BoxDecoration(
//                            border: Border(
//                                bottom: BorderSide(
//                                  color: primaryColor,
//                                ))),
//                        child: Image.network(
//                          'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
//                          height: 200,
//                          width: size.width,
//                          fit: BoxFit.cover,
//                        ),
//                      ),
//                      //topics show
//                      Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: Column(
//                          mainAxisAlignment: MainAxisAlignment.spaceAround,
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: <Widget>[
//                            //topics
//                            Text(
//                              "US & Canada",
//                              style: TextStyle(color: primaryColor),
//                            ),
//                            //title
//                            Text(
//                              'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ',
//                              style: titleStyle,
//                            ),
//                            Text(
//                                'রাত আটটায় লঞ্চ ছাড়ে। আবু সাঈদ রাত সাড়ে ১২টায় ঘুম থেকে জেগে ওঠে। বলে, প্রস্রাব করতে যাবে। সাইফুল আর আমি তাকে নিয়ে আসি নিচতলায়।।',
//                                style: detailStyle),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//            //todo :this is full video news details
//            Card(
//              elevation: 4,
//              child: InkWell(
//                onTap: null,
//                child: Container(
//                  color: blackColor,
//                  height: 340,
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Container(
//                        decoration: BoxDecoration(
//                            border: Border(
//                                bottom: BorderSide(
//                                  color: primaryColor,
//                                ))),
//                        child: Stack(
//                          children: <Widget>[
//                            Image.network(
//                              'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
//                              height: 200,
//                              width: size.width,
//                              fit: BoxFit.cover,
//                            ),
//                            Positioned(
//                              bottom: 0,
//                              child: Container(
//                                height: 25,
//                                width: 70,
//                                color: blackColor,
//                                child: Row(
//                                  children: <Widget>[
//                                    Icon(
//                                      Icons.play_arrow,
//                                      color: videoTextColors,
//                                    ),
//                                    Text('00.50',
//                                        style: TextStyle(
//                                            color: videoTextColors)),
//                                  ],
//                                ),
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//
//                      //topics show
//                      Container(
//                        padding: const EdgeInsets.all(8.0),
//                        child: Column(
//                          mainAxisAlignment: MainAxisAlignment.spaceAround,
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: <Widget>[
//                            //topics
//                            Text(
//                              "US & Canada",
//                              style: TextStyle(color: videoTextColors),
//                            ),
//                            //title
//                            Row(
//                              children: <Widget>[
//                                Icon(
//                                  Icons.play_arrow,
//                                  color: videoTextColors,
//                                ),
//                                Expanded(
//                                  child: Text(
//                                    'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ জীবিত হয়ে ফিরে এল মৃত সাঈদ ',
//                                    style: titleStyleVideo,
//                                  ),
//                                ),
//                              ],
//                            ),
//
//                            Text(
//                                'রাত আটটায় লঞ্চ ছাড়ে। আবু সাঈদ রাত সাড়ে ১২টায় ঘুম থেকে জেগে ওঠে। বলে, প্রস্রাব করতে যাবে। সাইফুল আর আমি তাকে নিয়ে আসি নিচতলায়।।',
//                                style: detailVideoStyle),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//            //todo:this is full video without details
//            Card(
//              elevation: 4,
//              child: InkWell(
//                onTap: null,
//                child: Container(
//                  color: Colors.black,
//                  height: 300,
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Container(
//                        decoration: BoxDecoration(
//                            border: Border(
//                                bottom: BorderSide(
//                                  color: primaryColor,
//                                ))),
//                        child: Stack(
//                          children: <Widget>[
//                            Image.network(
//                              'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
//                              height: 200,
//                              width: size.width,
//                              fit: BoxFit.cover,
//                            ),
//                            Positioned(
//                              bottom: 0,
//                              child: Container(
//                                height: 25,
//                                width: 70,
//                                color: blackColor,
//                                child: Row(
//                                  children: <Widget>[
//                                    Icon(
//                                      Icons.play_arrow,
//                                      color: videoTextColors,
//                                    ),
//                                    Text('01.50',
//                                        style: TextStyle(
//                                            color: videoTextColors)),
//                                  ],
//                                ),
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//
//                      //topics show
//                      Container(
//                        color: blackColor,
//                        padding: const EdgeInsets.all(8.0),
//                        child: Column(
//                          mainAxisAlignment: MainAxisAlignment.spaceAround,
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: <Widget>[
//                            //topics
//                            //title
//                            Row(
//                              children: <Widget>[
////                                  Icon(
////                                    Icons.play_arrow,
////                                    color: videoTextColors,
////                                  ),
//                                Expanded(
//                                  child: Text(
//                                    'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ জীবিত হয়ে ফিরে এল মৃত সাঈদ ',
//                                    style: titleStyleVideo,
//                                  ),
//                                ),
//                              ],
//                            ),
//
//                            Text('2h ago', style: detailVideoStyle),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//            //todo: top design list news
//            Card(
//              child: InkWell(
//                onTap: null,
//                child: Container(
//                  height: 100,
//                  child: Row(
//                    children: <Widget>[
//                      Stack(
//                        children: <Widget>[
//                          Image.network(
//                            'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
//                            width: size.width / 2 - 30,
//                            fit: BoxFit.cover,
//                          ),
//                          Positioned(
//                            top: 0,
//                            left: 0,
//                            child: Container(
//                              height: 25,
//                              width: 25,
//                              color: primaryColor,
//                              child: Center(
//                                child: Text('1',
//                                    style: TextStyle(
//                                        color: videoTextColors)),
//                              ),
//                            ),
//                          ),
//                        ],
//                      ),
//                      SizedBox(
//                        width: 10,
//                      ),
//                      Expanded(
//                        child: Column(
//                          mainAxisAlignment: MainAxisAlignment.spaceAround,
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: <Widget>[
//                            Text(
//                              'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ',
//                              style: titleStyle,
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Text(
//                                  "2m",
//                                  style: TextStyle(color: timeColors),
//                                ),
//                                SizedBox(
//                                  width: 20,
//                                  child: Text('  |', style: titleStyle),
//                                ),
//                                Text(
//                                  "Dhaka",
//                                  style: TextStyle(color: primaryColor),
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
            //todo Horizontal Scrool voiw
//            HorizonCard(),
            //todo this is footer section
            footer,
          ],
        ),

      ),
    );
  }
}
