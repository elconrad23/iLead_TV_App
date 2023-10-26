import 'package:flutter/material.dart';

class EventBooking extends StatefulWidget {
  const EventBooking({super.key});

  @override
  State<EventBooking> createState() => _EventBookingState();
}

class _EventBookingState extends State<EventBooking> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 180,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Text('Featured'),
          BlueBox(),
          Text('Popular Events'),
          Row(children: [
            BlueBox(),
            BlueBox(),
            BlueBox(),
          ],),
          Text('Upcoming Events'),
          Row(children: [
            BlueBox(),
            BlueBox(),
            BlueBox(),
          ],),
        ],
    ),);
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}