import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  double height;
  Color boxColor;
  String text1, text2;
  IconData icon;
  Option({
    super.key,
    required this.boxColor,
    required this.height,
    required this.text1,
    this.text2 = '',
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 160,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.deepPurple.withOpacity(.01),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  icon,
                  size: 25,
                ),
              ),
              padding: EdgeInsets.all(4),
            ),
          ),
          // Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1, // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                  color: const Color.fromARGB(255, 247, 245, 245),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
