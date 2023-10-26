
import 'package:flutter/material.dart';
import '../screens/stanbic_screen.dart';

class JobOpportunitiesLinks extends StatelessWidget {
  const JobOpportunitiesLinks({super.key});

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
                  image: AssetImage('/images/brightermondaylogo.webp')),
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
                    image: AssetImage('/images/ugjobline-logo.png')),
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
                  image: AssetImage('/images/fuzulogo.jpg')),
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
                  image: AssetImage('/images/linkedin-logo.webp')),
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
                    AssetImage('assets/images/nbssport-logo.png')),
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