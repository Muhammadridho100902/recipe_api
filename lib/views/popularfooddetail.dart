// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_adjacent_string_concatenation

import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipe_api/controller/recommend_product_controller.dart';
import 'package:my_recipe_api/utilities/app_constant.dart';
import 'package:my_recipe_api/utilities/color.dart';
import 'package:my_recipe_api/utilities/dimension.dart';
import 'package:my_recipe_api/views/Home.dart';
import 'package:my_recipe_api/widgets/appColumn.dart';
import 'package:my_recipe_api/widgets/appIcon.dart';
import 'package:my_recipe_api/widgets/bigText.dart';

class PopularFoodDetail extends StatelessWidget {
  int pageId;
  PopularFoodDetail({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<RecommendedProductController>().recommendedProductList[pageId];
    // print("Food Name is " + product.name.toString());
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 380,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(AppConstants.BASE_URL +
                        AppConstants.UPLOADS_URL +
                        product.img!)),
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
                GestureDetector(
                  onTap: () {
                    Get.to((HomePage()));
                  },
                  child: AppIcon(
                    icon: Icons.arrow_back_ios_rounded,
                    backgroundColor: Colors.white54,
                    iconColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ElegantNotification.info(
                      title: Text("Notification"),
                      description: Text("This Feature will be available soon"),
                    ).show(context);
                  },
                  child: AppIcon(
                    icon: Icons.shopping_cart_outlined,
                    backgroundColor: Colors.white54,
                    iconColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 280,
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width/15,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  AppColumn(
                    foodName: "${product.name}",
                    desc: "${product.description}",
                    star: '${product.stars}',
                    price: '${product.price}',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.height100,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: MediaQuery.of(context).size.width/15,
            right: MediaQuery.of(context).size.width/15),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20),
            topRight: Radius.circular(Dimensions.radius20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 12,
              width: MediaQuery.of(context).size.width / 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.remove,
                    color: Colors.grey,
                  ),
                  BigText(text: "1", textColor: Colors.black),
                  Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            // SizedBox(width: Dimensions.height20),
            GestureDetector(
              onTap: () {
                ElegantNotification.info(
                  title: Text("Notification"),
                  description: Text("This Feature will be available soon"),
                ).show(context);
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorData.buttonColor),
                child: Center(
                    child: BigText(
                        text: "\$" + "${product.price}" + " " + "Add to cart",
                        textColor: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
