import 'package:flutter/material.dart';
import './header.dart';
import './story.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Story> _stories = [];

  void generateStroies() {
    for (int i = 1; i <= 6; i++) {
      _stories.add(
        Story(
          storyImage: 'assets/images/photo_$i.jpg',
          userImage: 'assets/images/user_$i.jpg',
          userName: 'Yuki Otsuka $i',
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    generateStroies();

    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Header(),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text(
                      'ストーリーズ',
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          letterSpacing: 1.3),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 185,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: _stories,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
