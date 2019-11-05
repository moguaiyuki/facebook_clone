import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  final Color iconBackgroundColor;
  final IconData iconData;

  RoundedIcon({Key key, this.iconBackgroundColor, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: iconBackgroundColor,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white),
        ),
        child: Center(
          child: Icon(
            iconData,
            size: 15,
            color: Colors.white,
          ),
        ),
      );
}
