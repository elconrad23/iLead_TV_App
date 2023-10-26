
// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../screens/info_docs/finance.dart';
import '../screens/info_docs/fintech.dart';
import '../screens/info_docs/innovation.dart';
import '../screens/info_docs/sports.dart';
import '../screens/info_docs/tourism.dart';

class InfoLinks extends StatelessWidget {
  const InfoLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 169,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: 169.0,
            margin: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              border: Border.all(
                color: Colors.purpleAccent,
                width: 1.6,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(28),
            ),
            child: InkWell(
              child: const Column(
                children: [
                  Text('\n FINANCE'),
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Icon(
                      Icons.monetization_on_outlined,
                      size: 90.0,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Finance()),
              ),
            ),
          ),
    
          Container(
            alignment: Alignment.center,
            width: 169.0,
            margin: const EdgeInsets.all(1.3),
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              border: Border.all(
                color: Colors.purpleAccent,
                width: 1.6,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(28),
            ),
            child: InkWell(
              child: const Column(
                children: [
                  Text('\n TOURISM'),
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Icon(
                      Icons.pets,
                      size: 90.0,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              onTap: () => Navigator.push(context,
                MaterialPageRoute(  builder: (context) => const Finance()),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 169.0,
            margin: const EdgeInsets.all(1.3),
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              border: Border.all(
                color: const Color.fromRGBO(33, 37, 41, 1),
                width: 1.6,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(28),
            ),
            child: InkWell(
              child: const Column(
                children: [
                  Text('\n INNOVATION'),
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Icon(Icons.info_outline_rounded,
                      size: 90.0, color: Colors.white70),
                  ),
                ],
              ),
              onTap: () => Navigator.push( context,
                MaterialPageRoute( builder: (context) => const InnovationMarket()),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 169.0,
            margin: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              border: Border.all(
                color: Colors.purpleAccent,
                width: 1.6,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(28),
            ),
            child: InkWell(
              child: const Column(
                children: [
                  Text('\n FINTECH'),
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Icon(
                      Icons.monetization_on_rounded,
                      size: 90.0,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              onTap: () => Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const Finance()),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 169.0,
            margin: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              border: Border.all(
                color: Colors.purpleAccent,
                width: 1.6,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(28),
            ),
            child: InkWell(
              child: const Column(
                children: [
                  Text('\n SPORTS'),
                  Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Icon(
                      Icons.sports_basketball_rounded,
                      size: 90.0,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              onTap: () => Navigator.push( context,
                MaterialPageRoute(builder: (context) => const Sports()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}