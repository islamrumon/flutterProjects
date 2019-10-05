import 'dart:ui' as prefix0;

import 'package:cnn_news_app/screen/single_news_screen.dart';
import 'package:flutter/material.dart';
import 'package:cnn_news_app/helper/helper.dart';
import 'package:video_player/video_player.dart';
import 'package:cnn_news_app/widget/NewsVideoPlayer.dart';

class Screens extends StatefulWidget {
  @override
  _ScreensState createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        //Todo: This is news with paragrape
        Container(
          padding: EdgeInsets.all(3.0),
          child: Card(
            elevation: 8.0,
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SingleScreen()));
                  },
                  child: Container(
                    height: 400,
                    width: size.width,
                    color: Colors.white,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        Container(
                          decoration: new BoxDecoration(
                              image: new DecorationImage(
                            image: NetworkImage(
                                "https://www.movieposter.com/posters/archive/main/12/A70-6457"),
                            fit: BoxFit.cover,
                          )),
                          child: BackdropFilter(
                            filter: prefix0.ImageFilter.blur(
                                sigmaX: .5, sigmaY: .5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.black.withOpacity(0.1)),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: Container(
                            color: primaryColor,
                            width: 80,
                            height: 25,
                            child: Center(
                                child: Text(
                              "Politics",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'দক্ষিণ কোরিয়ায় টাইফুন মিতাগর কেড়ে নিল ৯ প্রাণ',
                            style: titleTextStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "",
                              style: timeTextStyle,
                              textAlign: TextAlign.start,
                            ),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  icon: bookmark,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: shareicon,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        )),
                        margin: EdgeInsets.only(left: 10, right: 10),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.play_arrow),
                              onPressed: () {},
                              color: Colors.grey,
                            ),
                            Expanded(
                                child: Text(
                              "The White House is  strategy to slow the Democratic impeachment machine",
                              style: praTextStyle,
                            )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.assignment),
                              onPressed: () {},
                              color: Colors.grey,
                            ),
                            Expanded(
                                child: Text(
                              "The White House is  strategy to slow the Democratic impeachment machine",
                              style: praTextStyle,
                            )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.assignment),
                              onPressed: () {},
                              color: Colors.grey,
                            ),
                            Expanded(
                                child: Text(
                              "The White House is  strategy to slow the Democratic impeachment machine",
                              style: praTextStyle,
                            )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 8, bottom: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.assignment),
                              onPressed: () {},
                              color: Colors.grey,
                            ),
                            Expanded(
                                child: Text(
                              "The White House is  strategy to slow the Democratic impeachment machine",
                              style: praTextStyle,
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        //Todo:This is adds
        Container(
          padding: const EdgeInsets.all(3.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SingleScreen()));
            },
            child: Card(
              elevation: 8.0,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 220,
                    width: size.width,
                    color: Colors.white,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPc4r0CCFGcUXkQ6Bqi3SC5lb-QRx6TDRCbUffoLscw95HNiqG",
                          fit: BoxFit.cover,
                          width: size.width,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "How to add Border to a raised button? How to add Border to a raised button?",
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('facebook.com'),
                              RaisedButton(
                                onPressed: () {},
                                child: Text("Visit Site"),
                                elevation: 0,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        //Todo: play media
        NewsVideoPlayer(
          videolink: "https://r1---sn-xpguxacq-q5je.googlevideo.com/videoplayback?expire=1570225154&ei=omeXXe2aI-yT1Ab5zrz4Cg&ip=103.106.56.46&id=o-AHLy7JoPy5DWaK8VUpd0JuN8R9SVwrbQIyt76QXAeyki&itag=18&source=youtube&requiressl=yes&mm=31%2C29&mn=sn-xpguxacq-q5je%2Csn-h5576n7k&ms=au%2Crdu&mv=m&mvi=0&pl=24&initcwndbps=472500&mime=video%2Fmp4&gir=yes&clen=39566146&ratebypass=yes&dur=550.103&lmt=1539114616748861&mt=1570203379&fvip=1&fexp=23842630&beids=9466587&c=WEB&txp=5531432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AHylml4wRQIhALeYkPPlUARUran-iiFqNAHRnsJAL-KfzI7GR2R1PWxDAiBNCr_dJ8wn1llSONd0LWWEZlnkoITwf8H_FQ32LB0syg%3D%3D&sig=ALgxI2wwRQIgbG7WkGOqxWHFPeCnWyXGsjTLvfcLyDSWSjluanZcuCUCIQC7e-qCzrWXq5P0HdqRn_s_CF0dCrrHVxYTgvZbAkVlfw%3D%3D",
          bottomText: Container(),
        ),
        //Todo:news with post time ago container height is fixed
        Container(
          padding: const EdgeInsets.all(3.0),
          child: Card(
            elevation: 8.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SingleScreen()));
                  },
                  child: Container(
                    height: 220,
                    width: size.width,
                    color: Colors.white,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        Container(
                          decoration: new BoxDecoration(
                              image: new DecorationImage(
                                  image: NetworkImage(
                                      "https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/01/07/10/GettyImages-111601909.jpg?w968h681"),
                                  fit: BoxFit.cover)),
                          child: BackdropFilter(
                            filter:
                                prefix0.ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.black.withOpacity(0)),
                            ),
                          ),
                        ),
                        Positioned(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Donald John Trump is the 45th and current president of the United States. ',
                            style: titleTextStyle,
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "23m",
                          style: timeTextStyle,
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: bookmark,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: shareicon,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        //Todo: without all
        Container(
          padding: const EdgeInsets.all(3.0),
          child: Card(
            elevation: 8.0,
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SingleScreen()));
                  },
                  child: Container(
                    height: 220,
                    width: size.width,
                    color: Colors.white,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        Container(
                          decoration: new BoxDecoration(
                              image: new DecorationImage(
                                  image: NetworkImage(
                                      "https://media.giphy.com/media/l46CtSZN75aR6meE8/giphy.gif"),
                                  fit: BoxFit.cover)),
                          child: BackdropFilter(
                            filter: prefix0.ImageFilter.blur(
                                sigmaX: .5, sigmaY: .5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.black.withOpacity(0.1)),
                            ),
                          ),
                        ),

                        Positioned(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Stay on top of Irans latest developments on the ground with Al Jazeera's fact-based news",
                            style: titleTextStyle,
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "",
                          style: timeTextStyle,
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: bookmark,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: shareicon,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        //Todo: with top chipes
        Container(
          padding: EdgeInsets.all(3.0),
          child: Card(
            elevation: 8.0,
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SingleScreen()));
                  },
                  child: Container(
                    height: 220,
                    width: size.width,
                    color: Colors.white,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: <Widget>[
                        Container(
                          decoration: new BoxDecoration(
                              image: new DecorationImage(
                                  image: NetworkImage(
                                      "https://www.ittefaq.com.bd/assets/news_photos/2019/10/03/image-93989-1570116840.jpg"),
                                  fit: BoxFit.cover)),
                          child: BackdropFilter(
                            filter: prefix0.ImageFilter.blur(
                                sigmaX: .5, sigmaY: .5),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.black.withOpacity(0.1)),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: Container(
                            color: primaryColor,
                            width: 80,
                            height: 25,
                            child: Center(
                                child: Text(
                              "Politics",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'ভারত-পাকিস্তান যুদ্ধ বাধলে মারা যাবে সাড়ে ১২ কোটি!',
                            style: titleTextStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "",
                          style: timeTextStyle,
                          textAlign: TextAlign.start,
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: bookmark,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: shareicon,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        //Todo: play media 1
        NewsVideoPlayer(
          videolink: "https://r1---sn-xpguxacq-q5je.googlevideo.com/videoplayback?expire=1570229646&ei=LnmXXeO7COGF1AaZuaPgCg&ip=103.106.56.46&id=o-AL-AvwhiOnCSNZ31VuoghYEDNeE3gcSxBH5bzote57ZN&itag=18&source=youtube&requiressl=yes&mm=31%2C29&mn=sn-xpguxacq-q5je%2Csn-h557sns7&ms=au%2Crdu&mv=m&mvi=0&pl=24&initcwndbps=506250&mime=video%2Fmp4&gir=yes&clen=13290572&ratebypass=yes&dur=286.812&lmt=1541365692340083&mt=1570207956&fvip=5&fexp=23842630&c=WEB&txp=5531432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AHylml4wRQIhAJNOt516e_m76x-b443kYP9C7RLnLvhbx-ratxtWNKU8AiB7JhlMrnbeSYkyhcsQ7IRNHkHbSjWm1fLp3HBjZgOnsg%3D%3D&sig=ALgxI2wwRQIgDa0RXvdsBx7oPyhGQDl9XGp6Dt17Bi816uTDAayeBqMCIQCBF6f8Qw-IIVLWPQu_2lXgcFUk_wxQ8dlnRW8-panCIw%3D%3D",
          bottomText: Positioned(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lag Ja Gale | Saheb Biwi Aur Gangster 3",
                  style: titleTextStyle,
                ),
              )),
        ),
      ],
    );
  }
}
