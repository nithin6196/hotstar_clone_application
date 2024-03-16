// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/core/constants/image_constants.dart';
import 'package:hotstar_clone_application/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:hotstar_clone_application/view/select_account_screen/kids_screen/kids_screen.dart';

class SelectAccountScreen extends StatelessWidget {
  const SelectAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.normalBlack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Who's watching?",
          style: TextStyle(
              color: ColorConstants.normalWhite,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.edit_outlined,
                    color: ColorConstants.normalGrey,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "Edit",
                    style: TextStyle(color: ColorConstants.normalGrey),
                  ),
                  SizedBox(width: 10)
                ],
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavScreen(),
                          )),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage(ImageConstants.mySpaceProImagesList[0]),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Nithin N",
                      style: TextStyle(
                          color: ColorConstants.normalWhite,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KidsScreen(),
                          )),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage(ImageConstants.mySpaceProImagesList[1]),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Kids",
                      style: TextStyle(
                          color: ColorConstants.normalWhite,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 30),
            Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: ColorConstants.normalGrey.withOpacity(.2),
                  child: Icon(
                    Icons.add,
                    color: ColorConstants.normalWhite,
                    size: 40,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Add",
                  style: TextStyle(
                      color: ColorConstants.normalWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
