import 'package:flutter/material.dart';
import './header.dart';
import './story.dart';
import './feed_widget.dart';
import '../models/feed.dart';
import 'package:lorem_cutesum/lorem_cutesum.dart';
import './post_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Story> _stories = [];
  final List<Feed> _feeds = [];

  void _generateStroies() {
    for (int i = 1; i <= 5; i++) {
      _stories.add(
        Story(
          storyImage: 'assets/images/image$i.jpg',
          userImage: 'assets/images/animal$i.jpg',
          userName: 'Yuki Otsuka $i',
        ),
      );
    }
  }

  void _generateFeeds() {
    for (int i = 1; i <= 5; i++) {
      _feeds.add(
        Feed(
          userImage: 'assets/images/animal$i.jpg',
          userName: 'Yuki Otsuka $i',
          time: '昨日・',
          text: Cutesum.loremCutesum(words: 20),
          image: 'assets/images/pic$i.jpg',
        ),
      );
    }
  }

  Widget _separatorWidget() => Container(
        height: 8,
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
                padding: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: <Widget>[
                    PostWidget(),
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
                    _separatorWidget(),
                    FeedWidget(
                      feed: _feeds[1],
                    ),
                    _separatorWidget(),
                    FeedWidget(
                      feed: _feeds[2],
                    ),
                    _separatorWidget(),
                    FeedWidget(
                      feed: _feeds[3],
                    ),
                    _separatorWidget(),
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
