import 'package:flutter/material.dart';

import 'View/Coursepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter task',
      home: Directionality(
        // use this
        textDirection: TextDirection.rtl, // set it to rtl
        child: CourseTask(),
      ),
    );
  }
}


