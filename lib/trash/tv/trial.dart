import 'package:flutter/material.dart';

class YoyoTrial extends StatelessWidget {
  const YoyoTrial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Image(
          image: AssetImage('/images/nbs-logo.png'),
          fit: BoxFit.fitHeight,
          height: 50,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: AspectRatio(
          aspectRatio: 16 / 9,
          child: Text(""),),);
  }
}