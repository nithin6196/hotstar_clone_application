// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hotstar_clone_application/core/constants/color_constants.dart';
import 'package:hotstar_clone_application/core/constants/image_constants.dart';
import 'package:hotstar_clone_application/view/dummy_db.dart';
import 'package:hotstar_clone_application/view/search_screen/widgets/search_category_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int selectedItemIndex = 0;
  List imagesList = [
    ImageConstants.indiaImagesList,
    ImageConstants.actionImagesList,
    ImageConstants.comedyImagesList,
    ImageConstants.crimeImagesList,
    ImageConstants.dramaImagesList,
    ImageConstants.romanceImagesList,
    ImageConstants.thrillerImagesList,
    ImageConstants.horrorImagesList,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.normalBlack.withOpacity(.91),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    // #1 textfield
                    prefixIcon: Icon(Icons.search),
                    hintText: "Movies, shows and more",
                    fillColor: ColorConstants.normalWhite,
                    filled: true,
                    suffixIcon:
                        IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              ),
              SizedBox(height: 15),
              Text(
                "People Search For",
                style: TextStyle(
                    color: ColorConstants.normalWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: ColorConstants.normalBlack.withOpacity(.2),
                ))),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                    DummyDb.searchCategoryTabs.length,
                    (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedItemIndex = index;
                            });
                          },
                          // #2   Categories
                          child: SearchCategoryCard(
                              index: index,
                              searchTabs: DummyDb.searchCategoryTabs,
                              icon: index == 0 ? DummyDb.icon1 : null,
                              isSelected: index == selectedItemIndex),
                        )),
                  )),
                ),
              ),
              // #3 Grid view images
              Expanded(
                  child: GridView.custom(
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 3,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  repeatPattern: QuiltedGridRepeatPattern.same,
                  pattern: [
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 2),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                          height: MediaQuery.sizeOf(context).width * .8,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(
                                imagesList[selectedItemIndex][index]),
                            fit: BoxFit.cover,
                          )),
                        ),
                    childCount: imagesList[selectedItemIndex].length),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
