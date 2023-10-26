import 'package:flutter/material.dart';
import 'package:asdeployment/screens/widget_tree.dart';
import '../widgets/app_bar.dart';
import 'about_us.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Settings',
        backgroundColor: Colors.lightGreenAccent,
        leading: Image(image: AssetImage('/icon/logo.png')),
        actions: [
          Text("."),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children:[
          Column(
            children:[
              const SizedBox(
                height: 3.3,
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => const WidgetTree()),
                    ),
                  },
                  child: const Text('My Account') ,),
              ),

              Padding(
                padding: const EdgeInsets.all(9.0),
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUs()),
                    ),
                  },
                  child: const Text('About Us') ,),
              ),

              Padding(
                padding: const EdgeInsets.all(9.0),
                child: TextButton(
                  onPressed: () {  },
                  child: const Text('Contact Us'),
                ),
              ),
            ],
          ),
        ],
    ),);
  }
}