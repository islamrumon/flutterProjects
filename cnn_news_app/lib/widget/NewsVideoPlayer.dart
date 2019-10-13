import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:cnn_news_app/helper/helper.dart';

class NewsVideoPlayer extends StatefulWidget {
  String videolink;
  Widget bottomText;

  NewsVideoPlayer({this.videolink,this.bottomText});
  @override
  _NewsVideoPlayerState createState() => _NewsVideoPlayerState();
}

class _NewsVideoPlayerState extends State<NewsVideoPlayer> {
  VideoPlayerController _controller;
  bool _iconshow = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//createVideo(widget.videolink);
    _controller = VideoPlayerController.network(widget.videolink)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: (_controller != null)
                    ? VideoPlayer(
                        _controller,
                      )
                    :null,
              ),
              Positioned(
                top: 10,
                bottom: 10,
                right: 10,
                left: 10,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                      _controller.value.isPlaying
                          ? _iconshow = false
                          : _iconshow = true;
                    });
                  },
                  child: _iconshow
                      ? Icon(
                          Icons.play_circle_filled,
                          color: Colors.white,
                          size: 60,
                        )
                      : Text(""),
                ),
              ),
              Container(
                child: _iconshow ?widget.bottomText:null,
              ),

            ],
          ),
          Container(
            height: 50,
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(""),
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
        ],
      ),
    );
  }
}
