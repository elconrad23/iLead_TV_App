import 'package:flutter/material.dart';
import 'package:asdeployment/widgets/app_bar.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

  Widget mission() {
    return const Text(
      'Our Mission: To harness, equip, guide and prosper young talent for prosperity');
  }

  Widget vision() {
    return const Text(
      '\n Our Vision: Specialization for efficient and sustainable development');
  }

  Widget aboutUsSizedBox (){
    return const SizedBox (width: 1.3,
    height: 1.3,
    );
  }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "About Us",
        backgroundColor: Colors.purpleAccent,
        leading: Image(image: AssetImage('/icon/logo.png')),
        actions: [
          Text("..."),
        ]),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            mission(),
            aboutUsSizedBox(),
            vision(),
            aboutUsSizedBox(),
            const Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image(image: AssetImage('/images/what-next.jpg')),
            ],),

            const Card(
              child: Text('iLead'),
            ),
            const Card(
              child: Text('ilead is a web and mobile platform designed to enhance youth specialization, growth and development of talent for social economic sustainability and development. It is available both on Google PlayStore and App Store.'),
            ),
            const Card(
              child: Text('Live TV'),
            ),
            const Card(
              child: Text('ilead TV is a media broadcasting channel through which the youth can get info and entertainment through one single platform.'),
            ),
          ],
        ),
      ),
    );
  }
}
