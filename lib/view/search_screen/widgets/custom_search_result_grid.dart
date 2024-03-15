// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hotstar_clone_application/core/constants/image_constants.dart';

class CustomSearchResultGrid extends StatelessWidget {
  const CustomSearchResultGrid({super.key, required this.isIndexEven});
  final bool isIndexEven;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isIndexEven
            ? Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: MediaQuery.sizeOf(context).width * .8,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(ImageConstants.indiaImagesList[0]),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).width * .4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      ImageConstants.indiaImagesList[1]),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).width * .4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      ImageConstants.indiaImagesList[2]),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    ),
                  ),
                ],
              )
            : Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).width * .4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      ImageConstants.indiaImagesList[1]),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).width * .4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      ImageConstants.indiaImagesList[2]),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: MediaQuery.sizeOf(context).width * .8,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(ImageConstants.indiaImagesList[0]),
                        fit: BoxFit.cover,
                      )),
                    ),
                  )
                ],
              ),
        GridView.builder(
          itemCount: 3,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                color: index.isEven ? Colors.orange : Colors.red,
                image: DecorationImage(
                    image: AssetImage(ImageConstants.indiaImagesList[index]),
                    fit: BoxFit.cover)),
          ),
        )
      ],
    );
  }
}
