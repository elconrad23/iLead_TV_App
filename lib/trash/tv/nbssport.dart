// ignore_for_file: library_private_types_in_public_api, camel_case_types
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class NBS_Sport extends StatefulWidget {
  const NBS_Sport({super.key});

  @override
  NBS_SportState createState() => NBS_SportState();
}

class NBS_SportState extends State<NBS_Sport> {
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
        "http://197.239.30.29/readymedia/stream/NBS_Sport/20-hls/live-media.m3u8",
        liveStream: true,
        // useAsmsTracks: true,
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
      title: 'NBS_Sport TV',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Image(
            image: AssetImage('/images/nbssport-logo.png'),
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
