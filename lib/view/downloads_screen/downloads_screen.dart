// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/global_widgets/custom_button.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.normalBlack.withOpacity(.94),
      appBar: AppBar(
        title: Text(
          "Downloads",
          style: TextStyle(
            color: ColorConstants.normalWhite,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              Image.asset("assets/images/downloads image.jpg"),
              Text(
                "No Downloads Available",
                style: TextStyle(
                    color: ColorConstants.normalWhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              Text(
                "Explore and download your favourite movies and shows to watch on the go",
                style: TextStyle(color: ColorConstants.normalGrey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              CustomButton(
                text: "Go to Home",
              )
            ],
          ),
        ),
      ),
    );
  }
}
