import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'presentation/main_page/widgets/main_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainPageScreen(),
    );
  }
}
