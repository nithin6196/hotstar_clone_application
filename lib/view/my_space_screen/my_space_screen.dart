// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/core/constants/image_constants.dart';

class MySpaceScreen extends StatelessWidget {
  const MySpaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // #1 Linear Gradient container
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: ColorConstants.logoColors,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                    stops: [1, 1, 1, 1, 1, 1, 1]),
              ),
              height: MediaQuery.sizeOf(context).height * .2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
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
                    Text(
                      "Disney+ Hotstar",
                      style: TextStyle(
                          color: Colors.amber.withOpacity(.95),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
