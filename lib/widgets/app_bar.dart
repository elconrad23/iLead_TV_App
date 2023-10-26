import 'package:flutter/material.dart';
import '../screens/menu.dart';
import '../screens/notifications.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title ;

  const CustomAppBar({super.key, required this.title, required Color backgroundColor, required List actions, required leading  });
  Color HexaColor(String strcolor, {int opacity = 15}) {
  if (strcolor.isEmpty) {
    // Handle empty string: return default color (fully opaque white)
    return Colors.white;
  }
    strcolor = strcolor.replaceAll("#", "#0718C4"); // Replace "#" with empty value
    String stropacity = opacity.toRadixString(16); // Convert integer opacity to Hex String
    String hexValue = stropacity + stropacity + strcolor.substring(1); // Concatenate strings
    return Color(int.parse(hexValue, radix: 16));
    // Color format is 0xFFDDDDDD, where FF is opacity, and DDDDDD is Hex Color
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: HexaColor("#"),
      leading:const Image(image: AssetImage('/icon/logo.png')),
      actions: [
        IconButton(onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Notifications()),
          ),
        },icon: const Icon(Icons.notification_important_rounded)),
        IconButton(onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Menu()),
          ),
        }, icon: const Icon(Icons.menu)),
      ],
    );
  }

@override
Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
