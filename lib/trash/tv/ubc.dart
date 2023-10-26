// ignore_for_file: library_private_types_in_public_api, camel_case_types
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class UBC extends StatefulWidget {
  const UBC({super.key});

  @override
  UBCState createState() => UBCState();
}

class UBCState extends State<UBC> {
  final BetterPlayerController _betterPlayerController = BetterPlayerController(
      const BetterPlayerConfiguration(
        autoPlay: true,
        aspectRatio: 16 / 9,
        controlsConfiguration: BetterPlayerControlsConfiguration(
          enableSkips: false,
          enableFullscreen: true,
        ),
      ),
      betterPlayerDataSource: BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        "http://197.239.30.29/readymedia/stream/UBC/20-hls/live-media.m3u8",
        liveStream: true,
    ),); // Make it nullable

  @override
  void initState() {
    super.initState();
    _betterPlayerController ;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UBC TV',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Image(
            image: AssetImage('/images/ubc-logo.png'),
            fit: BoxFit.fitHeight,
            height: 50,
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: AspectRatio(
              aspectRatio: 16 / 9,
              child: BetterPlayer(
                controller: _betterPlayerController,
              ),
            ),
    ),),);
  }

@override
  void dispose() {
    // Dispose of the BetterPlayerController only if it's not null
    _betterPlayerController.dispose();
    super.dispose();
  }
}
