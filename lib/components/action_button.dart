import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final IconData iconData;
  final String label;
  final Color color;

  ActionButton({Key key, this.iconData, this.label, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                iconData,
                color: color,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              )
            ],
          ),
        ),
      );
}
