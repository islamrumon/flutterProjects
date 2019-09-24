import 'package:flutter/material.dart';
import 'package:clone_bbc_news/helpers/helper.dart';

class SingleScreen extends StatefulWidget {
//  static const dataroute = 'single_screen';
  @override
  _SingleScreenState createState() => _SingleScreenState();
}

class _SingleScreenState extends State<SingleScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Details App'),
        backgroundColor: primaryColor,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.share),
            color: Colors.white,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.network(
                      'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                      height: 200,
                      fit: BoxFit.cover,
                      width: size.width,
                    ),
                    Container(
                      height: 40,
                      width: size.width,
                      color: detailsBootomColors,
                      child: Padding(
                        padding: EdgeInsets.all(detailspadding),
                        child: Text(
                          'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ',
                          overflow: TextOverflow.ellipsis,
                          style: detailstextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(detailspadding),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //todo:all title
                    Text(
                      'ৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ৃত সাঈদ যেভাবে জৃত সাঈদ ৃত সাঈদ যেভাবে জ',
                      style: detailTitleStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
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
                    Text(
                      'You should wrap your Container in a Flexible to let your Row know that its ok for the Container to be narrower than its intrinsic width. Expanded will also work',
                      style: textDetailsbold,
                    ),
                    //Todo:this is small adds banaer
                    Container(
                      margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      height: 100,
                      width: size.width,
//                      color: addsColor,
                      decoration:
                          BoxDecoration(border: Border.all(color: addsColor)),
                      child: InkWell(
                        onTap: null,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text("Adverising", style: addsTextStyle),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT71vFLX1Lrgej5-zI8w47hX0uOmvS8jKh-KEGZynZ8BiYwwEZG',
                                width: size.width,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //todo:body
                    Text(
                      'You should wrap your Container in a Flexible to let your Row know that its ok for the Container to be narrower than its intrinsic width. Expanded will also workI want wrap text as text grows. I searched through and tried wrap with almost everything but still text stays one line and overflows from the screen. Does anyone know how to achieve this? Any help is highly appreciated!',
                      style: textDetails,
                    ),
//todo:title of details page
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
                      child: Text(
                        'What is importent!',
                        style: detailTitleStyle,
                      ),
                    ),

                    //Todo:this is Big adds banaer
                    Container(
                      height: 260,
                      width: size.width,
                      margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      decoration:
                          BoxDecoration(border: Border.all(color: addsColor)),
                      child: InkWell(
                        onTap: null,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text("Adverising", style: addsTextStyle),
                              Image.network(
                                'https://busycreator.com/wp-content/uploads/2015/07/smartAppBanner-1280x720@2x.png',
                                width: size.width,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'You should wrap your Container in a Flexible to let your Row know that its ok for the Container to be narrower than its intrinsic width. Expanded will also workI want wrap text as text grows. I searched through and tried wrap with almost everything but still text stays one line and overflows from the screen. Does anyone know how to achieve this? Any help is highly appreciated!',
                      style: textDetails,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
                      child: Text(
                        'What about other politicians?',
                        style: detailTitleStyle,
                      ),
                    ),

                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.network(
                            'https://assetsds.cdnedge.bluemix.net/sites/default/files/styles/very_big_1/public/feature/images/hasina-1wb.jpg?itok=SCGQfPuo',
                            height: 200,
                            fit: BoxFit.cover,
                            width: size.width,
                          ),
                          Container(
                            height: 40,
                            width: size.width,
                            color: detailsBootomColors,
                            child: Padding(
                              padding: EdgeInsets.all(detailspadding),
                              child: Text(
                                'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ ৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ',
                                overflow: TextOverflow.ellipsis,
                                style: detailstextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: 260,
                      width: size.width,
                      margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      decoration:
                          BoxDecoration(border: Border.all(color: addsColor)),
                      child: InkWell(
                        onTap: null,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text("Adverising", style: addsTextStyle),
                            Flexible(
                              child: Image.network(
                                'https://colinbendell.cloudinary.com/image/upload/c_crop,f_auto,g_auto,h_350,w_400/v1512090971/Wizard-Clap-by-Markus-Magnusson.gif',
                                width: size.width,
                                height: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //related news
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
                      child: Text(
                        'Related News',
                        style: detailTitleStyle,
                      ),
                    ),
                    //Todo:List view news only title
                    Card(
                      child: InkWell(
                        onTap: null,
                        child: Container(
                          height: 100,
                          child: Row(
                            children: <Widget>[
                              Image.network(
                                'https://assetsds.cdnedge.bluemix.net/sites/default/files/styles/very_big_1/public/feature/images/hasina-1wb.jpg?itok=SCGQfPuo',
                                width: size.width / 2 - 30,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ',
                                      style: titlastyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: InkWell(
                        onTap: null,
                        child: Container(
                          height: 100,
                          child: Row(
                            children: <Widget>[
                              Image.network(
                                'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                                width: size.width / 2 - 30,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ',
                                      style: titlastyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Card(
                      child: InkWell(
                        onTap: null,
                        child: Container(
                          height: 100,
                          child: Row(
                            children: <Widget>[
                              Image.network(
                                'https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/09/03/bcd0d7db273386be243a35675da6d16b-5d6dfddf3030d.jpg',
                                width: size.width / 2 - 30,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'মৃত সাঈদ যেভাবে জীবিত হয়ে ফিরে এল মৃত সাঈদ',
                                      style: titlastyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //related topics
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
                      child: Text(
                        'Related Topics',
                        style: detailTitleStyle,
                      ),
                    ),
                    //todo:related colors
                    Container(
                      padding: EdgeInsets.all(10),
//                      height: 20,
                      width: size.width,
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: topicColors)),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Text('Naotk', style: relatedTopic),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
//                      height: 20,
                      width: size.width,
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: topicColors)),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Text('Naotk 2', style: relatedTopic),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
//                      height: 20,
                      width: size.width,
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: topicColors)),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Text('Naotk 3', style: relatedTopic),
                      ),
                    ), Container(
                      padding: EdgeInsets.all(10),
//                      height: 20,
                      width: size.width,
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: topicColors)),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Text('Naotk 4', style: relatedTopic),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
//                      height: 20,
                      width: size.width,
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: topicColors)),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Text('Naotk 5', style: relatedTopic),
                      ),
                    ),

                    footer,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
