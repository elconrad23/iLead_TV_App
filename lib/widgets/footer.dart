import 'package:flutter/material.dart';

class CustomFooterText extends StatelessWidget implements PreferredSizeWidget{

  const CustomFooterText({super.key, required Color backgroundColor });
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purpleAccent,
        body:
        Text( "A non-profit organization focused on empowering marginalized communities. \n"),
    );
  }

final kToolbarHeight = 0.31;
@override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

