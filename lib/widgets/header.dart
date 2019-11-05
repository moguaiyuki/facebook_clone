import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Widget headerIcon(IconData icon) => Container(
        width: 45,
        height: 45,
        padding: EdgeInsets.all(3),
        decoration:
            BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
        child: Center(
          child: Icon(
            icon,
            size: 30,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) => Container(
        height: 120,
        padding: EdgeInsets.only(top: 60, right: 20, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset('assets/images/facebook.png'),
            Row(
              children: <Widget>[
                headerIcon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                headerIcon(Icons.message),
              ],
            ),
          ],
        ),
      );
}
