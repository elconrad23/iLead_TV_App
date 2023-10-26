import 'package:flutter/material.dart';
import 'package:asdeployment/widgets/app_bar.dart';
import '../widgets/events_booking_links.dart';
import '../widgets/info_links.dart';
import '../widgets/job_listings.dart';
import '/widgets/tv_links.dart';
import 'event_booking_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget homeSizedBox (){
    return const SizedBox (width: 1.3,
    height: 1.3,
    );
  }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Home",
        backgroundColor: Colors.purpleAccent,
        leading: Image(image: AssetImage('/icon/logo.png')),
        actions: [
          Text("..."),
        ]),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            homeSizedBox(),
            Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image.network('https://i2.wp.com/findingae.com/wp-content/uploads/2018/06/IMG_2548.jpg?resize=1080%2C780&ssl=1'),
              IconButton(
                onPressed: () {
                  Navigator.push( context,
                    MaterialPageRoute( builder: (context) => const EventBookingPage()),
                  );
                },
                icon: const Icon(
                  Icons.play_arrow,
                ),
                tooltip: 'Introduction',
                iconSize: 72,
                color: Colors.white70,
              ),
            ],),

            const Card(
              child: Text('iLead Partnerships'),
            ),
            const InfoLinks(),
            const Card(
              child: Text('Jobs and Gigs'),
            ),
            const JobOpportunitiesLinks(),
            const Card(
              child: Text('Courses and Bootcamps'),
            ),
            const EventBookingLinks(),
            const Card(
              child: Text('Live TV and Events'),
            ),
            const TvLinks(),
          ],
        ),
      ),
    );
  }
}
