import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

const _imgUrl =
    'https://www.themoviedb.org/t/p/w500_and_h282_face/1dtc6cfrMcJFeaiMPHCGWm6zU0N.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KHeight,
        SearchTextTItle(title: 'Movies & TV'),
        KHeight,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.1 / 1.6,
          children: List.generate(20, (index) => MainCard()),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(_imgUrl),
          ),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
