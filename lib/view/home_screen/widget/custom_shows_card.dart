// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/controller/home_screen_controller.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/model/home_screen_model/home_screen_model.dart';

class CustomShowsCard extends StatelessWidget {
  const CustomShowsCard({
    super.key,
    required this.itemModel,
  });
  final HomeScreenModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            itemModel.text,
            textAlign: TextAlign.start,
            style: TextStyle(
                color: ColorConstants.normalWhite,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: itemModel.imagePath.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(itemModel.imagePath[index]),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
