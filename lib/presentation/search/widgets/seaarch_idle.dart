import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

const _imageUrl =
    'https://www.themoviedb.org/t/p/w500_and_h282_face/nJbWAc8wakV3BncyF4643SyFWPr.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KHeight,
        SearchTextTItle(
          title: 'Top Searches',
        ),
        KHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: ((context, index) => const TopSearchList()),
              separatorBuilder: ((context, index) => KHeight20),
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchList extends StatelessWidget {
  const TopSearchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.38,
          height: 80,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(_imageUrl)),
          ),
        ),
        Kwidth,
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
              color: whiteColor, fontWeight: FontWeight.bold, fontSize: 17),
        )),
        const Icon(
          Icons.play_circle_outlined,
          size: 50,
          color: Colors.white,
        ),
      ],
    );
  }
}
