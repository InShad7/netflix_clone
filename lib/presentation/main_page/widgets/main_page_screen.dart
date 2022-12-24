import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/downloads/widgets/download_screen.dart';
import 'package:netflix/presentation/fast_laugh/fast_laugh_screen.dart';
import 'package:netflix/presentation/home/home_screen.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix/presentation/new_and_hot/new_and_hot_screen.dart';
import 'package:netflix/presentation/search/search_screen.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({Key? key}) : super(key: key);

  final _pages = [
    HomeScreen(),
    NewAndHotScreen(),
    FastAndLaughScreen(),
    SearchScreen(),
    DownloadScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (BuildContext context, int index, _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
