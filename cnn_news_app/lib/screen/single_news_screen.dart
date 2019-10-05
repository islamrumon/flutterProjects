import 'package:flutter/material.dart';
import 'package:cnn_news_app/helper/helper.dart';
import 'package:cnn_news_app/widget/related_news.dart';
import 'package:cnn_news_app/helper/news.dart';
import 'package:cnn_news_app/widget/grid_view.dart';

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
        backgroundColor: primaryColor,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bookmark_border),
            color: Colors.white,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'https://www.ittefaq.com.bd/assets/news_photos/2019/10/04/image-94088-1570126799.jpg',
                  height: 200,
                  fit: BoxFit.cover,
                  width: size.width,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Four killed in knife attack at Paris police headquarters',
                    style: detailstextStyle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //todo:all title
                      Text(
                        'By Saskya Vandoorne and Antoine Crouin, CNN',
                        style: detailTitleStyle,
                      ),
                      Text(
                        "Updated 1 hour ago Oct 4, 2019",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 10.0, bottom: 8.0),
                            child: Text(
                              'Paid Content',
                              style: detailTitleStyle,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Recommended by ",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                "Alibaba.com",
                                style:
                                TextStyle(color: primaryColor, fontSize: 10),
                              ),
//                            Image.network("https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjP1vWakIPlAhUX73MBHXn7CgwQjRx6BAgBEAQ&url=https%3A%2F%2Fpngtree.com%2Ffree-logo-png&psig=AOvVaw2uLWcr6WxsRjPDBpMz7iXk&ust=1570296420910654",height: 9,width: 18,)
                            ],
                          ),
                        ],
                      ),
                      //todo:related colors
//                    RelatedNews(),
                    ],
                  ),
                ),
                Container(
                  height: (size.width /2 )*3,
                  child: GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(4, (index) {
//                    return Text(index.toString());
                        return GridNews(
                          title: listOfNews[index].title,
                          image: listOfNews[index].image,
                          location: listOfNews[index].location.toString(),
                          time: listOfNews[index].time.toString(),
                          detials: listOfNews[index].detials.toString(),
                        );
                      })),
                ),
              ],
            ),

            footer,
          ],

        ),
      ),
    );
  }
}
