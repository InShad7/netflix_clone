import 'package:flutter/material.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Text('Downloads'))),
    );
  }
}
