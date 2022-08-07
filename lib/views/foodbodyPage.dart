// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipe_api/controller/popular_product_controller.dart';
import 'package:my_recipe_api/model/productModel.dart';
import 'package:my_recipe_api/utilities/app_constant.dart';
import 'package:my_recipe_api/utilities/color.dart';
import 'package:my_recipe_api/widgets/IconAndWidgets.dart';
import 'package:my_recipe_api/widgets/bigText.dart';
import 'package:my_recipe_api/widgets/smallText.dart';
import 'package:dots_indicator/dots_indicator.dart';

class FoodPageBody extends StatefulWidget {
  FoodPageBody({
    Key? key,
  }) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  var _currentPage = 0.0;
  var _scaleFactor = 0.8;
  double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPage = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 330,
            color: Colors.yellow,
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return _buildPageItem(position);
                }),
        ),
        DotsIndicator(
            dotsCount:5,
            position: _currentPage,
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeColor: ColorData.mainColor,
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular", textColor: Colors.black87),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: BigText(text: ".", textColor: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Food Pairing", textColor: Colors.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 20, bottom: 20),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("assets/img1.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // width: 230,
                      margin: EdgeInsets.only(right: 10),
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.white),
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                                text: "Nutritious fruit meal in blabla",
                                textColor: Colors.black),
                            SizedBox(
                              height: 10,
                            ),
                            SmallText(
                                text: "With chinese characteristics",
                                textColor: Colors.grey),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconAndWidgets(
                                  iconData: Icons.circle_sharp,
                                  iconColor: Colors.yellow.shade600,
                                  txtColor: Colors.grey,
                                  Text: 'Normal',
                                ),
                                IconAndWidgets(
                                  iconData: Icons.location_on,
                                  iconColor: ColorData.mainColor,
                                  txtColor: Colors.grey,
                                  Text: '1.7Km',
                                ),
                                IconAndWidgets(
                                  iconData: Icons.access_time,
                                  iconColor: Colors.yellow.shade900,
                                  txtColor: Colors.grey,
                                  Text: '32mins',
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPage.floor()) {
      var currScale = 1 - (_currentPage - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPage.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPage - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPage.floor() - 1) {
      var currScale = 1 - (_currentPage - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? Colors.green.shade100 : Colors.purple,
              image: DecorationImage(
                fit: BoxFit.cover,
                // image: NetworkImage(
                //   AppConstants.BASE_URL + "${popularProduct.img}" 
                // ),
                image: AssetImage("assets/img1.jpg")
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(left: 25, right: 25, bottom: 30),
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300, offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // BigText(text: "${popularProduct.name}", textColor: Colors.black54),
                    BigText(text: "Food Name", textColor: Colors.black54),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: ColorData.mainColor,
                              size: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SmallText(text: "4.5", textColor: Colors.grey),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "1267", textColor: Colors.grey),
                        SizedBox(
                          width: 5,
                        ),
                        SmallText(text: "Comments", textColor: Colors.grey)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        IconAndWidgets(
                          iconData: Icons.circle_sharp,
                          iconColor: Colors.yellow.shade600,
                          txtColor: Colors.grey,
                          Text: 'Normal',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconAndWidgets(
                          iconData: Icons.location_on,
                          iconColor: ColorData.mainColor,
                          txtColor: Colors.grey,
                          Text: '1.7Km',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconAndWidgets(
                          iconData: Icons.access_time,
                          iconColor: Colors.yellow.shade900,
                          txtColor: Colors.grey,
                          Text: '32mins',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
