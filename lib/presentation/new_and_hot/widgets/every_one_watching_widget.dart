import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_btn_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KHeight,
        const Text(
          'Friends',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        KHeight,
        const Text(
          'This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pitfals of work, life and love in 1990 Manhattan. ',
          style: TextStyle(color: greyColor),
        ),
        KHeight50,
        const VideoWidget(),
        KHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomBtnWidget(title: 'Share', icon: Icons.send_outlined),
            Kwidth,
            CustomBtnWidget(title: 'Add', icon: Icons.add),
            Kwidth,
            CustomBtnWidget(title: 'Play', icon: Icons.play_arrow),
            Kwidth,
          ],
        )
      ],
    );
  }
}
