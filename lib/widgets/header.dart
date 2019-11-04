import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        height: 120,
        padding: EdgeInsets.only(top: 60, right: 20, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset('assets/images/face.png'),
            Row(
              children: <Widget>[
                Icon(
                  Icons.search,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.message,
                  size: 30,
                )
              ],
            ),
          ],
        ),
      );
}
