// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/controller/new_and_hot_screen_controller.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/global_widgets/custom_button.dart';

class LatestReleasesTab extends StatelessWidget {
  const LatestReleasesTab({
    super.key,
    required this.latestImageIndex,
  });
  final int latestImageIndex;

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
                    .latestList[latestImageIndex].containerPic),
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
                NewAndHotScreenController.latestList[latestImageIndex].logoPic,
                scale: 3,
              ),
              SizedBox(height: 5),
              Text(
                NewAndHotScreenController
                    .latestList[latestImageIndex].description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: ColorConstants.normalGrey),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      verticalPadding: 12,
                      text: "Watch Now",
                      icon: Icons.play_arrow,
                      isVisible: true,
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 13),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorConstants.normalGrey.withOpacity(.2)),
                    child: Icon(
                      Icons.add,
                      color: ColorConstants.normalWhite,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
