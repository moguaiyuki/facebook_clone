import 'package:face_book/components/action_button.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        height: 110,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/animal1.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                FlatButton(
                  child: Text(
                    '今何してる？',
                    style: TextStyle(fontSize: 17),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              height: 1,
              margin: EdgeInsets.symmetric(vertical: 10),
              color: Colors.grey[200],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ActionButton(
                  iconData: Icons.videocam,
                  color: Colors.red,
                  label: 'ライブ',
                ),
                ActionButton(
                  iconData: Icons.photo_library,
                  color: Colors.lightGreen,
                  label: '写真',
                ),
                ActionButton(
                  iconData: Icons.location_on,
                  color: Colors.red,
                  label: 'チェックイン',
                ),
              ],
            )
          ],
        ),
      );
}
