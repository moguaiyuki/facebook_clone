import 'package:flutter/material.dart';
import './header.dart';
import './story.dart';
import './feed_widget.dart';
import '../models/feed.dart';
import 'package:lorem_cutesum/lorem_cutesum.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Story> _stories = [];
  final List<Feed> _feeds = [];

  void _generateStroies() {
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

  void _generateFeeds() {
    for (int i = 1; i <= 5; i++) {
      _feeds.add(
        Feed(
          userImage: 'assets/images/user_$i.jpg',
          userName: 'Yuki Otsuka $i',
          time: '1 hr',
          text: Cutesum.loremCutesum(words: 20),
          image: 'assets/images/photo_$i.jpg',
        ),
      );
    }
  }

  Widget _separatorWidget() => Container(
        height: 10,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        color: Colors.grey[400],
      );

  @override
  Widget build(BuildContext context) {
    _generateStroies();
    _generateFeeds();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Header(),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  children: <Widget>[
                    _separatorWidget(),
                    Container(
                      height: 185,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: _stories,
                      ),
                    ),
                    _separatorWidget(),
                    FeedWidget(
                      feed: _feeds[0],
                    ),
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
