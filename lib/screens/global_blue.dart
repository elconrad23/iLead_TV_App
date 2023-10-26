import 'package:flutter/material.dart';

class HexaColor{
  Color HexaColorMethod(String strcolor, {int opacity = 15}) {
  strcolor = strcolor.replaceAll("#", "#0718C4"); // Replace "#" with empty value
  String stropacity = opacity.toRadixString(16); // Convert integer opacity to Hex String
  String hexValue = stropacity + stropacity + strcolor.substring(1); // Concatenate strings
  return Color(int.parse(hexValue, radix: 16));
  }
}