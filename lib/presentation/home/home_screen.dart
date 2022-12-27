import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/bg_card.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, dynamic value, Widget? child) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children:const [
                  BgCard(),
                  KHeight,
                  MainTitleCard(title: 'Released in the Past Year'),
                  KHeight,
                  MainTitleCard(title: 'Trending Now'),
                  KHeight,
                  NumberTitleCard(),
                  MainTitleCard(title: 'Tense Dramas'),
                  KHeight,
                  MainTitleCard(title: 'South Indian Cinemas'),
                  KHeight,
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration:const Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 80,
                      color: Colors.black.withOpacity(0.3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                'https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png',
                                width: 60,
                                height: 60,
                              ),
                             const Spacer(),
                              const Icon(
                                Icons.cast_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                              Kwidth,
                              Container(
                                height: 30,
                                width: 30,
                                color: Colors.blue,
                              ),
                              Kwidth,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('TV Shows', style: kHomeTileText),
                              Text('Movies', style: kHomeTileText),
                              Text('Categories', style: kHomeTileText),
                            ],
                          )
                        ],
                      ),
                    )
                  : KHeight
            ],
          ),
        );
      },
    ));
  }
}
