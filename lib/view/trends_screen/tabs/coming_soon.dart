// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/controller/new_and_hot_screen_controller.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/global_widgets/custom_button.dart';

class ComingSoonTab extends StatelessWidget {
  const ComingSoonTab({
    super.key,
    required this.imageIndex,
  });
  final int imageIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(NewAndHotScreenController
                    .contentList[imageIndex].containerPic),
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                NewAndHotScreenController.contentList[imageIndex].logoPic,
                scale: 3,
              ),
              SizedBox(height: 5),
              Text(
                NewAndHotScreenController.contentList[imageIndex].description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: ColorConstants.normalGrey),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomButton(text: "Remind Me Mar 18", isVisible: true),
              )
            ],
          ),
        )
      ],
    );
  }
}
