import 'package:flutter/material.dart';
import 'global_blue.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.dochub.com/fillable-form/42052-dfcu-online-account-opening-uganda');

class StanbicUpdates extends StatefulWidget {
  const StanbicUpdates({super.key});

  @override
  State<StanbicUpdates> createState() => _StanbicUpdatesState();
}

class _StanbicUpdatesState extends State<StanbicUpdates> {
  @override
  Widget build(BuildContext context) {
  HexaColor HexaColorInstance = HexaColor ();
  return Column(
      children:[
        Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey.shade900),
              onPressed: _launchUrl,
              child: const Text('Open a Bank Account')),
            Image(
              image: AssetImage('images/dfcu_logo.jpeg'),
            )
          ],),
        Container(
          child: Text(" Foreign Trade "),
          decoration: BoxDecoration(
            color: HexaColorInstance.HexaColorMethod('#'),
          ),
        )

      ]
    );
  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

}