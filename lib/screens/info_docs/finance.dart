import 'package:flutter/material.dart';
import '../../widgets/app_bar.dart';
import 'crypto_page.dart';
import 'business_page.dart';

class Finance extends StatelessWidget {
  const Finance({super.key});


@override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: CustomAppBar(
        title: '',
        backgroundColor: Colors.black12 ,
        actions: [], leading: null,),
      body:
        Column(children: [
          const Text(' Finance • \n Partners '),
          Row(
            children: [
              ElevatedButton(
                onPressed: ()
                { Navigator.push( context,
                MaterialPageRoute(builder: (context) => const BusinessMarket()),);},
                child: const Text('Insurance technology '),
              ),
              ElevatedButton(
                onPressed: ()
                { Navigator.push( context,
                MaterialPageRoute(builder: (context) => const BusinessMarket()),);},
                child: const Text('Mobile payments'),
              ),
              ElevatedButton(
                onPressed: ()
                { Navigator.push( context,
                MaterialPageRoute(builder: (context) => const BusinessMarket()),);},
                child: const Text('Security and stocks'),
              ),
              ElevatedButton(
                onPressed: ()
                { Navigator.push( context,
                MaterialPageRoute(builder: (context) => const CryptoMarketTV()),);},
                child: const Text('Crypto'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}