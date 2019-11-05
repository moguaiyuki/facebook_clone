import 'package:flutter/material.dart';
import '../models/feed.dart';

class FeedWidget extends StatelessWidget {
  final Feed feed;

  FeedWidget({Key key, this.feed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          feedHeader(),
          SizedBox(height: 22),
          feedText(),
          SizedBox(height: 20),
          feed.image != '' ? feedImage() : Container(),
        ],
      ),
    );
  }

  Widget feedImage() => Container(
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(feed.image),
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget feedText() => Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Text(
          feed.text,
          style: TextStyle(
            fontSize: 15,
            color: Color(0xFFF101113),
            height: 1.4,
            letterSpacing: 1.1,
          ),
        ),
      );

  Widget feedHeader() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(feed.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    feed.userName,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        feed.time,
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.people,
                        color: Colors.grey,
                        size: 18,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      );
}
