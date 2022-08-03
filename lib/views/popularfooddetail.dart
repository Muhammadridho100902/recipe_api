// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_recipe_api/utilities/color.dart';
import 'package:my_recipe_api/widgets/IconAndWidgets.dart';
import 'package:my_recipe_api/widgets/appColumn.dart';
import 'package:my_recipe_api/widgets/appIcon.dart';
import 'package:my_recipe_api/widgets/bigText.dart';
import 'package:my_recipe_api/widgets/smallText.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/img1.jpg",
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios_rounded,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 310,
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  AppColumn(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 70,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.remove, color: Colors.grey,),
                  BigText(text: "1", textColor: Colors.black),
                  Icon(Icons.add, color: Colors.grey,),
                ],
              ),
            ),
            Container(
              height: 70,
              width: 240,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorData.buttonColor),
              child: Center(
                  child: BigText(
                      text: "Rp.10.000 Add to cart", textColor: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
