import 'package:flutter/material.dart';

class SearchModel {
  String text;
  Color? boxColor;
  IconData? icon;
  Color? iconColor = Colors.black;

  SearchModel({
    this.boxColor,
    this.text = '',
    this.icon,
    this.iconColor,
  });

  static List<SearchModel> getModels() {
    List<SearchModel> models = [];

    models.add(
      SearchModel(
        boxColor: const Color.fromARGB(255, 156, 131, 201),
        text: "What's a wild animal ?",
        icon: Icons.mic_rounded,
      ),
    );

    models.add(
      SearchModel(
        boxColor: Colors.black,
        text: "Scaning images",
        icon: Icons.adf_scanner_outlined,
        iconColor: Colors.white,
      ),
    );

    models.add(
      SearchModel(
        boxColor: Color.fromARGB(255, 203, 192, 100),
        text: "Analysis my dribble shot",
        icon: Icons.message_outlined,
      ),
    );

    models.add(
      SearchModel(
        boxColor: const Color.fromARGB(255, 156, 131, 201),
        text: "How show the prototype Figma",
        icon: Icons.macro_off,
      ),
    );

    return models;
  }
}
