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
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.normalBlack.withOpacity(.9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(alignment: Alignment.center, children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          ImageConstants.homeImagesList[currentPage]),
                      fit: BoxFit.fitHeight),
                ),
                child: PageView.builder(
                  controller: pageController,
                  itemCount: ImageConstants.homeImagesList.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.only(bottom: 20),
                      alignment: Alignment.bottomCenter,
                      width: double.infinity,
                      child: Image.asset(
                        ImageConstants.floatImagesList[index],
                        scale: 1.3,
                      )),
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
              position: currentPage.toDouble(),
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
                ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => CustomShowsCard(
                          itemModel: HomeScreenController.homePicsList[index],
                        ),
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: HomeScreenController.homePicsList.length)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
