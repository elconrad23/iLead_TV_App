import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class NTV extends StatefulWidget {
  const NTV({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NTVState createState() => _NTVState();
}

class _NTVState extends State<NTV> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('M3U8 Video Player'),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: BetterPlayer(
            controller: _betterPlayerController, // Use ?. to access methods
        ),
      ),),
    );
  }

  @override
  void dispose() {
    // Dispose of the BetterPlayerController only if it's not null
    _betterPlayerController.dispose();
    super.dispose();
  }
}
