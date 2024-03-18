// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WatchHistory extends StatelessWidget {
  const WatchHistory({super.key, required this.assetImage});
  final ImageProvider assetImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: assetImage, fit: BoxFit.cover)),
    );
  }
}
