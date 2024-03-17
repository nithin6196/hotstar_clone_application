// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/core/constants/image_constants.dart';
import 'package:hotstar_clone_application/view/select_account_screen/select_account_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) =>
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => SelectAccountScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: ColorConstants.logoColors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            image: DecorationImage(
              image: AssetImage(ImageConstants.hotstarLogoPng),
              scale: 2,
            )),
      ),
    );
  }
}
