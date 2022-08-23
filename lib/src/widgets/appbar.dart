import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar InstagramAppBar() {
  return AppBar(
    leading: const Image(image: AssetImage("assets/text-logo.png")),
    actions: <Widget>[
      IconButton(
        icon: const Icon(FontAwesomeIcons.heart),
        color: Colors.grey[800],
        onPressed: () {
          print("heart pressed");
        },
      ),
      IconButton(
        icon: const Icon(FontAwesomeIcons.message),
        color: Colors.grey[800],
        onPressed: () {
          print("heart pressed");
        },
      ),
    ],
    leadingWidth: 300.0,
    backgroundColor: Colors.white,
    elevation: 0,
  );
}
