import 'package:flutter/material.dart';

class FastAndLaughScreen extends StatelessWidget {
  const FastAndLaughScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Center(child: Text('Fast Laugh'))),
    );
  }
}