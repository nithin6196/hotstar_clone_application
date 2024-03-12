// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/view/my_space_screen/my_space_screen.dart';
import 'package:hotstar_clone_application/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  List screenList = [
    Container(color: Colors.red),
    SearchScreen(),
    Container(color: Colors.green),
    Container(color: Colors.orange),
    MySpaceScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorConstants.normalBlack,
          selectedItemColor: ColorConstants.normalWhite,
          unselectedItemColor: ColorConstants.normalGrey,
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.flash_on_sharp), label: "New & Hot"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download_rounded), label: "Downloads"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "My Space"),
          ]),
    );
  }
}
