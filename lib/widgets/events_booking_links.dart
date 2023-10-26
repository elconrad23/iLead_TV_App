
import 'package:flutter/material.dart';

import '../screens/stanbic_screen.dart';

class EventBookingLinks extends StatelessWidget {
  const EventBookingLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
          children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: 190.0,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.blueAccent,
                width: 0.9,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(28),
            ),
            child: InkWell(
              child: const Padding(
                padding: EdgeInsets.all(13.0),
                child: Image(
                  image: AssetImage('/images/motiv-logo.jpg')),
              ),
              onTap: () => Navigator.push( context,
                MaterialPageRoute(builder: (context) => const StanbicUpdates()),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 190.0,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.blueAccent,
                width: 0.9,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(28),
            ),
            child: InkWell(
              child: const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Image(
                    image: AssetImage('/images/dlalogo.jpeg')),
                ),
              onTap: () => Navigator.push( context,
                MaterialPageRoute(builder: (context) => const StanbicUpdates()),
              ),
            ),
          ),

          Container(
            alignment: Alignment.center,
            width: 190.0,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.blueAccent,
                width: 0.9,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(28),
            ),
            child: InkWell(
              child: const Padding(
                padding: EdgeInsets.all(13.0),
                child: Image(
                  image: AssetImage('/images/africon.jpg')),
              ),
              onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const StanbicUpdates()),
              ),
            ),
          ),

          Container(
            alignment: Alignment.center,
            width: 190.0,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.blueAccent,
                width: 0.9,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(28),
            ),
            child: InkWell(
              child: const Padding(
                padding: EdgeInsets.all(13.0),
                child: Image(
                  image: AssetImage('/images/hiphoplogo.jpg')),
              ),
              onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const StanbicUpdates()),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 190.0,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.blueAccent,
                width: 0.9,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(28),
            ),
            child: InkWell(
              child: const Padding(
                padding: EdgeInsets.all(13.0),
                child: Image(
                  image:
                    AssetImage('/images/refactory_logo.png')),
              ),
              onTap: () => Navigator.push( context,
                MaterialPageRoute( builder: (context) => const StanbicUpdates()),
              ),
            ),
          ),

        ],
        ),
        ],
      ),
    );
  }
}