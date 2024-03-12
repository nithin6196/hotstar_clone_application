// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';

class SearchCategoryCard extends StatelessWidget {
  const SearchCategoryCard(
      {super.key,
      required this.index,
      required this.searchTabs,
      this.icon,
      required this.isSelected});
  final int index;
  final List searchTabs;
  final IconData? icon;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: ColorConstants.normalBlack),
            borderRadius: BorderRadius.circular(8),
            color: isSelected ? ColorConstants.normalBlack : null),
        child: Row(
          children: [
            icon != null
                ? Icon(
                    icon,
                    color: ColorConstants.normalWhite,
                  )
                : SizedBox(),
            SizedBox(width: 6),
            Text(
              searchTabs[index],
              style: TextStyle(color: ColorConstants.normalWhite),
            )
          ],
        ));
  }
}
