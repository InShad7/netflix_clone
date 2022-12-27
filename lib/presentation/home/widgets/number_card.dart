import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class NumberCard extends StatelessWidget {
  NumberCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 50,
                height: 200,
              ),
              Container(
                width: 130,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: kRadius10,
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://www.themoviedb.org/t/p/w440_and_h660_face/7l3war94J4tRyWUiLAGokr3ViF2.jpg'))),
              ),
            ],
          ),
          Positioned(
            left: 15,
            bottom: -30,
            child: BorderedText(
              strokeWidth: 4.0,
              strokeColor: whiteColor,
              child: Text(
                '${index + 1}',
                style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 150,
                    decoration: TextDecoration.none,
                    decorationColor: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
