// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar(
      {super.key,
      required this.title,
      required this.assetImage,
      required this.borderColor});
  final String title;
  final ImageProvider assetImage;

  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: borderColor)),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: assetImage,
          ),
        ),
        SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(color: ColorConstants.normalWhite),
        ),
      ],
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    required this.titleList,
  });

  final List<String> titleList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: ColorConstants.normalBlack.withOpacity(.4),
          child: Icon(
            Icons.add,
            color: ColorConstants.normalWhite,
          ),
        ),
        SizedBox(height: 4),
        Text(
          titleList[2],
          style: TextStyle(color: ColorConstants.normalWhite),
        )
      ],
    );
  }
}
