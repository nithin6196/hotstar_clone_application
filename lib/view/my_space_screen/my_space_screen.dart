// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/core/constants/image_constants.dart';
import 'package:hotstar_clone_application/view/my_space_screen/widget/custom_circle_avatar.dart';
import 'package:hotstar_clone_application/view/my_space_screen/widget/watch_history.dart';

class MySpaceScreen extends StatelessWidget {
  const MySpaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isIndexEven = true;
    List<String> titleList = ["Nithin N", "Kids", "Add"];
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: ColorConstants.logoColors,
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                stops: [5, 5, 5, 5, 5, 5, 5]),
          ),
          child: Column(
            children: [
              // #1 Linear Gradient container
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * .2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // #2 AppBar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        ImageConstants.hotstarLogoPng))),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.settings,
                                    color: ColorConstants.normalWhite,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Help & Settings",
                                    style: TextStyle(
                                        color: ColorConstants.normalWhite),
                                  )
                                ],
                              ))
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Disney+ Hotstar",
                            style: TextStyle(
                                color: Colors.amber.withOpacity(.95),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.amber.withOpacity(.95),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0,
                color: ColorConstants.normalBlack.withOpacity(.4),
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 10),
              // #2 Second container
              Expanded(
                flex: 4,
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Profiles",
                            style: TextStyle(
                                color: ColorConstants.normalWhite,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit_outlined,
                                    color: ColorConstants.normalWhite,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Edit",
                                    style: TextStyle(
                                        color: ColorConstants.normalWhite),
                                  )
                                ],
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: List.generate(
                                    ImageConstants.mySpaceProImagesList.length,
                                    (index) => Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: CustomCircleAvatar(
                                            borderColor:
                                                isIndexEven == index.isEven
                                                    ? ColorConstants.normalWhite
                                                    : Colors.transparent,
                                            title: titleList[index],
                                            assetImage: AssetImage(
                                                ImageConstants
                                                        .mySpaceProImagesList[
                                                    index]),
                                          ),
                                        )),
                              ),
                            ],
                          ),
                          AddButton(titleList: titleList)
                        ],
                      ),
                      SizedBox(height: 50),
                      Text(
                        "Continue Watching",
                        style: TextStyle(
                            color: ColorConstants.normalWhite,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            ImageConstants.watchImagesList.length,
                            (index) => Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: WatchHistory(
                                assetImage: AssetImage(
                                    ImageConstants.watchImagesList[index]),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
