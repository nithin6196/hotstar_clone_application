// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/core/constants/image_constants.dart';

class CategoryBlock extends StatefulWidget {
  const CategoryBlock({super.key});

  @override
  State<CategoryBlock> createState() => _CategoryBlockState();
}

class _CategoryBlockState extends State<CategoryBlock> {
  bool isSelected = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: ImageConstants.kidsImagesList.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          childAspectRatio: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5),
      itemBuilder: (context, index) => Stack(children: [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                image:
                    AssetImage(ImageConstants.kidsImagesList[index].toString()),
                fit: BoxFit.cover),
            color: Colors.green,
          ),
        ),
        Positioned(
            top: 5,
            left: 5,
            child: IconButton(
              onPressed: () {
                setState(() {
                  isSelected = !isSelected;
                  selectedIndex = index;
                });
              },
              icon: isSelected && selectedIndex == index
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border_outlined),
              color: isSelected && selectedIndex == index
                  ? Colors.red
                  : ColorConstants.normalWhite,
            )),
        Positioned(
          bottom: 12,
          left: 12,
          child: Image.asset(
              scale: index != 4 ? 2.5 : 1.5,
              ImageConstants.languageLogoList[index].toString()),
        )
      ]),
    );
  }
}
