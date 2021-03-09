import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class videosRepository extends StatefulWidget{

  final String title;
  final url;

  videosRepository(this.title, this.url);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _videosRepository();
  }

}

class _videosRepository extends State<videosRepository>{

  YoutubePlayerController _controller;

  void runYoutubePlayer(){
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.url),
      flags: YoutubePlayerFlags(
      enableCaption: false,
      isLive: false,
        autoPlay: false,
          disableDragSeek: true,
      )
    );
  }

  @override
  void initState() {
    runYoutubePlayer();
    super.initState();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

   return YoutubePlayerBuilder(
     player: YoutubePlayer(
       controller: _controller,
     ),
     builder: (context, player){
       return player;
     },
   );


  }

}
