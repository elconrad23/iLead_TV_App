import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class NBS extends StatefulWidget {
  const NBS({super.key});

  @override
  _NBSState createState() => _NBSState();
}

class _NBSState extends State<NBS> {
  late BetterPlayerController _betterPlayerController;
  late Widget Function(BuildContext context, Object error, StackTrace stackTrace) errorBuilder;

  var betterPlayerConfiguration = const BetterPlayerConfiguration(
    autoPlay: true,
    looping: true,
    fullScreenByDefault: true,
    controlsConfiguration: BetterPlayerControlsConfiguration(
        textColor: Colors.black,
        iconsColor: Colors.black,),
    );
    
  @override
  void initState() {
    super.initState();
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      "http://197.239.30.29/readymedia/stream/tvnbs_tv/8-hls/live-media.m3u8");
    _betterPlayerController = BetterPlayerController(
      BetterPlayerConfiguration(),
      betterPlayerDataSource: betterPlayerDataSource);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Image(
          image: AssetImage('/images/nbs-logo.png'),
          fit: BoxFit.fitHeight,
          height: 50,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: AspectRatio(
        aspectRatio: 16 / 9,
        child: BetterPlayer(
          controller: _betterPlayerController,
          ),
        ),
          // Container( child: errorBuilder: (context, error, stackTrace) {
          // // Extract the error message from the 'error' object
          // String errorMessage = error.toString();

          // return Container(
          //   color: Colors.amber,
          //   alignment: Alignment.center,
          //   child: Text(
          //     'Whoops!\n$errorMessage', // Display the error message
          //     style: const TextStyle(fontSize: 30),
          //   ),
          // );};
  );
}

  @override
  void dispose() {
    super.dispose();
    _betterPlayerController.dispose();
  }
}