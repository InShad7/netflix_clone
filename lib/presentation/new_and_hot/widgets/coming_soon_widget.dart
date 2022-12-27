import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_btn_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'FEB',
                style: TextStyle(fontSize: 19, color: greyColor),
              ),
              Text(
                '11',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 4),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const VideoWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      'The Chronicles of Narnia',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -3),
                    ),
                  ),
                  Row(
                    children: const [
                      CustomBtnWidget(
                          title: 'Remind Me',
                          textSize: 14,
                          iconSize: 20,
                          icon: Icons.notifications_outlined),
                      Kwidth,
                      CustomBtnWidget(
                          title: 'Help',
                          textSize: 14,
                          iconSize: 20,
                          icon: Icons.info_outline),
                      Kwidth
                    ],
                  )
                ],
              ),
              KHeight,
              const Text('Coming on Friday'),
              KHeight,
              const Text(
                'The Chronicles of Narnia',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              KHeight,
              const Text(
                'Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence\n - and relationship -into a tailship',
                style: TextStyle(color: greyColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
