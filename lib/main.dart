import 'package:flutter/material.dart';
import './widgets/home.dart';

void main() => runApp(FaceBookApp());

class FaceBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        title: 'FaceBook',
        home: Home(),
      );
}

