
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
final Uri _url = Uri.parse('https://ndere.com/');


class Tourism extends StatelessWidget {
  const Tourism({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold (
      body:
        Column(children: [
          const Text(' Tourism \n • Partners: '),
          Row(
            children: [
              ElevatedButton(
                onPressed: _launchUrl,
                child: Text('UWA'),
              ),
              ElevatedButton(
                onPressed: _launchUrl,
                child:  const Text('Ministry '),
              ),
              ElevatedButton(
                onPressed: _launchUrl,
                child:  const Text('Safari'),
              ),
            ],
          )
        ],
      ),
    );
  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}