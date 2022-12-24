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
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.black,
          textTheme: const TextTheme(
              bodyText1: TextStyle(
                color: Colors.white,
              ),
              bodyText2: TextStyle(color: Colors.white))),
      home: MainPageScreen(),
    );
  }
}
