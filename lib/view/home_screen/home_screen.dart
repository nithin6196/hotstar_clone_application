// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/controller/home_screen_controller.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/core/constants/image_constants.dart';
import 'package:hotstar_clone_application/global_widgets/custom_button.dart';
import 'package:hotstar_clone_application/view/home_screen/widget/custom_shows_card.dart';
import 'package:hotstar_clone_application/view/home_screen/widget/watch_history.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();
  double currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.normalBlack.withOpacity(.9),
      body: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                controller: pageController,
                itemCount: ImageConstants.homeImagesList.length,
                itemBuilder: (context, index) => Container(
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstants.homeImagesList[index]),
                        fit: BoxFit.fitHeight),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 15,
                left: 5,
                child: Image.asset(
                  ImageConstants.hotstarLogoPng,
                  scale: 8,
                )),
            Positioned(
              top: 40,
              right: 15,
              child: Icon(
                Icons.cast,
                color: ColorConstants.normalWhite,
              ),
            ),
          ]),
          SizedBox(height: 15),
          DotsIndicator(
            dotsCount: ImageConstants.homeImagesList.length,
            position: currentPage,
            decorator: DotsDecorator(
                color: ColorConstants.normalGrey,
                activeColor: ColorConstants.normalWhite,
                size: Size(9, 9),
                activeSize: Size(18, 9),
                spacing: EdgeInsets.symmetric(horizontal: 5)),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomButton(
                    verticalPadding: 12,
                    text: "Watch Now",
                    icon: Icons.play_arrow,
                    isVisible: true,
                    buttonColor: ColorConstants.normalGrey.withOpacity(.2),
                    textColor: ColorConstants.normalWhite,
                    iconColor: ColorConstants.normalWhite,
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 13),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: ColorConstants.normalGrey.withOpacity(.2)),
                  child: Icon(
                    Icons.add,
                    color: ColorConstants.normalWhite,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Continue Watching",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: ColorConstants.normalWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    ImageConstants.watchImagesList.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: WatchHistory(
                        assetImage:
                            AssetImage(ImageConstants.watchImagesList[index]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => CustomShowsCard(),
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: HomeScreenController.homePicsList.length),
              )
            ],
          ),
        ],
      ),
    );
  }
}
