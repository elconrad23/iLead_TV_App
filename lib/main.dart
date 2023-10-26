
// ignore_for_file: library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:asdeployment/screens/home.dart';
import 'package:asdeployment/screens/search.dart';
import 'firebase_options.dart';
import 'screens/events.dart';
import 'screens/settings.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const iLeadApp());
  // FlutterNativeSplash.remove();
}

@override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'images/logo.png',
      nextScreen: const Home(),
      duration: 1720,
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.scale,
    );
  }
class iLeadApp extends StatefulWidget {
  const iLeadApp({super.key});

  @override
  _iLeadAppState createState() => _iLeadAppState();
}

class _iLeadAppState extends State<iLeadApp> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Search(),
    const Events(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.purple,
            ),
            label:  ('HOME'),
            activeIcon: Icon(
              Icons.home_filled,
              color: Colors.purpleAccent,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
              color: Colors.purple,
            ),
            label:  ('SEARCH'),
            activeIcon: Icon(
              Icons.search_outlined ,
              color: Colors.purpleAccent,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.tv_rounded ,
              color: Colors.purple,
            ),
            label:  ('EVENTS'),
            activeIcon: Icon(
              Icons.tv_outlined,
              color: Colors.purpleAccent,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.purple,
            ),
            label:  ('SETTINGS'),
            activeIcon: Icon(
              Icons.settings_sharp ,
              color: Colors.purpleAccent,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    ),);
  }
}
