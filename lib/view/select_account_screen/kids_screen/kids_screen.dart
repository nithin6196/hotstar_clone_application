// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/view/select_account_screen/kids_screen/widget/category_block.dart';

class KidsScreen extends StatelessWidget {
  const KidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: ColorConstants.logoColors,
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                stops: [5, 5, 5, 5, 5, 5, 5]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Build Your Home Page",
                style: TextStyle(color: ColorConstants.normalGrey),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.volume_up,
                    color: ColorConstants.normalWhite,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Choose your favourite languages",
                    style: TextStyle(
                        color: ColorConstants.normalWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: 15),
              CategoryBlock()
            ],
          ),
        ),
      ),
    );
  }
}
