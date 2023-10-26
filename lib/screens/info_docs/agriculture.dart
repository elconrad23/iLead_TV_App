import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://wits.worldbank.org/trade/comtrade/en/country/UGA/year/2018/tradeflow/Exports/partner/ALL/product/100590');

class Agriculture extends StatelessWidget {
  const Agriculture({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold (
      body:
        Column(children: [
          const Text(' Agriculture \n • Partners: '),
          Row(
            children: [
              ElevatedButton(
                onPressed: _launchUrl,
              child: Text('Operation Wealth Creation (OWC)'),
              ),
              ElevatedButton(
                onPressed: _launchUrl,
                child:  const Text('Gov’t MAIFA'),
              ),
              ElevatedButton(
                onPressed: _launchUrl,
                child:  const Text('Agro-based international partners'),
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