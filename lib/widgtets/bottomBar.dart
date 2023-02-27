import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final Function navigate;

  const BottomBar({Key? key, required this.navigate}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(child: buttonWidget("place", Colors.black)),
                    GestureDetector(child: buttonWidget("place", Colors.black)),
                    GestureDetector(child: buttonWidget("place", Colors.black)),
                    GestureDetector(child: buttonWidget("place", Colors.black)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(child: buttonWidget("place", Colors.black)),
                    GestureDetector(child: buttonWidget("place", Colors.black)),
                    GestureDetector(child: buttonWidget("place", Colors.black)),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}

Widget buttonWidget(String text, Color color) {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: color)),
    child: Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 14.0,
      ),
    ),
  );
}
