// import 'package:flutter/material.dart';
// import 'package:asdeployment/screens/notifications.dart';
// import 'package:asdeployment/screens/tv/nbs.dart';
// import 'package:asdeployment/screens/tv/ubc.dart';
// import '../screens/settings.dart';
// import '../screens/tv/nbssport.dart';
// import '../screens/tv/ntv.dart';
// import '../screens/tv/sanyuka.dart';

// class Live extends StatefulWidget {
//   const Live({super.key});

//   @override
//   State<Live> createState() => _LiveState();
// }

// class _LiveState extends State<Live> {

// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Live TV"),
//         centerTitle: true,
//         actions: [
//           IconButton(onPressed: (){
//             Navigator.push(context,
//               MaterialPageRoute(
//                 builder: (context) => const Settings()),
//               );
//           }, icon: const Icon(Icons.settings)),
//           IconButton(onPressed: (){
//             Navigator.push(context,
//               MaterialPageRoute(
//                 builder: (context) => const Notifications()),
//               );
//           }, icon: const Icon(Icons.notifications)),
//         ],
//       ),
//       body: SingleChildScrollView(
//       child: Column(
//         children: <Widget>[
//           const SizedBox(
//             height: 3,
//           ),
//             Container(
//               alignment: Alignment.center,
//               width: 123.0,
//               margin: const EdgeInsets.all(1.3),
//               decoration: BoxDecoration(
//                 color: const Color.fromRGBO(0, 150, 136, 1),
//                 border: Border.all(color: Colors.blue, width: 3.0,),
//                 shape: BoxShape.rectangle,
//               ),
//               child:  Column(children: [
//                 Container(
//                   padding: const EdgeInsets.all(3.0),
//                   child: (const Image(image: AssetImage('assets/images/nbs-logo.png'))),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3.0),
//                   child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const NBS()),
//                     );
//                   },
//                   child: const Text(" Tune in: CH01 "),
//                 ),
//               ),],),
//             ),
//             Container(
//               alignment: Alignment.center,
//               width: 123.0,
//               margin: const EdgeInsets.all(1.3),
//               decoration: BoxDecoration(
//                 color: const Color.fromRGBO(0, 150, 136, 1),
//                 border: Border.all(color: Colors.blue, width: 3.0,),
//                 shape: BoxShape.rectangle,
//               ),
//               child: Column(children: [
//                 Container(
//                   padding: const EdgeInsets.all(3.0),
//                   child: (const Image(image: AssetImage('assets/images/ubc-logo.png'))),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3.0),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) =>  const UBC()),
//                       );
//                     },
//                     child: const Text(" Tune in: CH02"),
//                   ),
//                 ),
//               ],),
//             ),
            
//             Container(
//               alignment: Alignment.center,
//               width: 123.0,
//               margin: const EdgeInsets.all(1.3),
//               decoration: BoxDecoration(
//                 color: const Color.fromRGBO(0, 150, 136, 1),
//                 border: Border.all(color: Colors.blue, width: 3.0,),
//                 shape: BoxShape.rectangle,
//               ),
//               child:  Column(children: [
//                 Container(
//                   padding: const EdgeInsets.all(3.0),
//                   child: (const Image(image: AssetImage('assets/images/nbssport-logo.png'))),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3.0),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push( context,
//                         MaterialPageRoute(builder: (context) => const NBS_Sport()),
//                       );
//                     },
//                     child: const Text(" Tune in: CH03 "),
//                   ),
//               ),],),
//             ),
//             Container(
//               alignment: Alignment.center,
//               width: 123.0,
//               margin: const EdgeInsets.all(1.3),
//               decoration: BoxDecoration(
//                 color: const Color.fromRGBO(0, 150, 136, 1),
//                 border: Border.all(color: Colors.blue, width: 3.0,),
//                 shape: BoxShape.rectangle,
//               ),
//               child:  Column(children: [
//                 Container(
//                   padding: const EdgeInsets.all(3.0),
//                   child: (const Image(image: AssetImage('assets/images/ntv-logo.jfif'))),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3.0),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => const NTV()),
//                       );
//                     },
//                     child: const Text(" Tune in: CH04 "),
//                   ),
//               ),],),
//               ),
//             Container(
//               alignment: Alignment.center,
//               width: 123.0,
//               margin: const EdgeInsets.all(1.3),
//               decoration: BoxDecoration(
//                 color: const Color.fromRGBO(0, 150, 136, 1),
//                 border: Border.all(color: Colors.blue, width: 3.0,),
//                 shape: BoxShape.rectangle,
//               ),
//               child:  Column(children: [
//                 Container(
//                   padding: const EdgeInsets.all(3.0),
//                   child: (const Image(image: AssetImage('assets/images/sanyuka-logo.jfif'))),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3.0),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => const Sanyuka()),
//                       );
//                     },
//                     child: const Text(" Tune in: CH05 "),
//                   ),
//               ),],),
//               ),
//               Container(
//               alignment: Alignment.center,
//               width: 123.0,
//               margin: const EdgeInsets.all(1.3),
//               decoration: BoxDecoration(
//                 color: const Color.fromRGBO(0, 150, 136, 1),
//                 border: Border.all(color: Colors.blue, width: 3.0,),
//                 shape: BoxShape.rectangle,
//               ),
//               child: Column(children: [
//                 Container(
//                   padding: const EdgeInsets.all(3.0),
//                   child: (const Image(image: AssetImage('assets/images/spark-logo.png'))),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3.0),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) =>  const UBC()),
//                       );
//                     },
//                     child: const Text(" Tune in: CH06"),
//                   ),
//                 ),
//               ],),
//             ),
//             ],
//           ),),
//     );
//   }
// }
