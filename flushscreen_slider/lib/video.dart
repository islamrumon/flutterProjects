import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

VideoPlayerController _controller;
class video extends StatefulWidget {
  @override
  _videoState createState() => _videoState();
}

class _videoState extends State<video> {


  void initState(){
    super.initState();
    _controller = VideoPlayerController.network(
//        'https://youtu.be/6wNFJIbTxNk'
    'https://pagalworld3.org/14640/Makhna%20Video%20Song%20Yo%20Yo%20Honey%20Singh.mp4'
    )
      ..initialize().then((_) {
        setState(() {

        });
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _controller.value.initialized ? AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ):Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}