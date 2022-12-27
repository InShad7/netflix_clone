import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/every_one_watching_widget.dart';


class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              title: Text(
                'New & Hot',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              actions: [
                Icon(
                  Icons.cast_outlined,
                  color: whiteColor,
                  size: 30,
                ),
                Kwidth,
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.blue,
                ),
                Kwidth
              ],
              bottom: TabBar(
                labelColor: blackColor,
                isScrollable: true,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                unselectedLabelColor: whiteColor,
                indicator: BoxDecoration(
                  color: whiteColor,
                  borderRadius: kRadius30,
                ),
                tabs: const [
                  Tab(
                    text: '🍿 Coming Soon',
                  ),
                  Tab(
                    text: '👀 Everyone\'s watching',
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              _buildComingSoon(),
              _buildEveryOneWatching(),
            ],
          )),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(itemBuilder: ((context, index) {
      return const ComingSoonWidget();
    }));
  }

  _buildEveryOneWatching() {
    return ListView.builder(
      itemBuilder: ((context, index) => const EveryoneWatchingWidget()),
    );
  }
}
