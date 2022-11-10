import 'package:flutter/material.dart';
import 'package:jahan_nama/Model/CityModel.dart';

// ignore: camel_case_types
class newAnimated extends StatelessWidget {
  newAnimated(
      {super.key,
      required this.mainIndex,
      required this.index,
      required this.onTap,
      required this.myList});
  final int? mainIndex;
  final int? index;
  final List<myModel> myList;
  final Function() onTap;
  double iconSize = 85;
  @override
  build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, right:15, left: 15, bottom:12),
      child: AnimatedScale(
        duration: const Duration(milliseconds: 100),
        scale: index == mainIndex ? 1.3 : 1,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: MediaQuery.of(context).size.height / 9.9,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage("assets/images/${myList[index!].url}.jpg"),
                    fit: BoxFit.cover),
                border: Border.all(color:index == mainIndex ? const Color.fromARGB(255, 185, 190, 216):Colors.white, width: 4),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
