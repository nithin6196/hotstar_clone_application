// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/controller/new_and_hot_screen_controller.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/view/trends_screen/tabs/coming_soon.dart';
import 'package:hotstar_clone_application/view/trends_screen/tabs/latest_releases.dart';

class TrendsScreen extends StatelessWidget {
  const TrendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstants.normalBlack.withOpacity(.9),
          primary: true,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal: 30),
              dividerHeight: 0,
              labelColor: ColorConstants.normalWhite,
              unselectedLabelColor: ColorConstants.normalGrey,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 25),
              indicatorColor: ColorConstants.normalWhite,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  icon: Text(
                    "Coming Soon",
                    style: TextStyle(
                        color: ColorConstants.normalWhite, fontSize: 20),
                  ),
                ),
                Tab(
                  icon: Text(
                    "Latest Releases",
                    style: TextStyle(
                        color: ColorConstants.normalWhite, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(physics: NeverScrollableScrollPhysics(), children: [
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => ComingSoonTab(
                      imageIndex: index,
                    ),
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemCount: NewAndHotScreenController.contentList.length),
            ListView.separated(
                itemBuilder: (context, index) =>
                    LatestReleasesTab(latestImageIndex: index),
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: NewAndHotScreenController.latestList.length)
          ]),
        ),
      ),
    );
  }
}
