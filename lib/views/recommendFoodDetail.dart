// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, must_be_immutable, prefer_adjacent_string_concatenation

import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipe_api/controller/popular_product_controller.dart';
import 'package:my_recipe_api/routes/app_routes.dart';
import 'package:my_recipe_api/utilities/app_constant.dart';
import 'package:my_recipe_api/utilities/color.dart';
import 'package:my_recipe_api/utilities/dimension.dart';
import 'package:my_recipe_api/widgets/appIcon.dart';
import 'package:my_recipe_api/widgets/bigText.dart';
import 'package:my_recipe_api/widgets/expandable_text_widget.dart';

class RecommendFoodDetail extends StatelessWidget {
  int pageId;
  RecommendFoodDetail({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.initial);
                  },
                  child: AppIcon(
                    icon: Icons.clear_rounded,
                    backgroundColor: Colors.white54,
                    iconColor: Colors.black54,
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
                    iconColor: Colors.black54,
                  ),
                ),
              ],
            ),
            bottom: PreferredSize(
              child: Container(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                width: double.maxFinite,
                child: Center(
                    child: BigText(
                  text: product.name!,
                  textColor: Colors.black,
                )),
              ),
              preferredSize: Size.fromHeight(20),
            ),
            pinned: true,
            backgroundColor: ColorData.mainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
              AppConstants.BASE_URL + AppConstants.UPLOADS_URL + product.img!,
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Expandable_Text(
                    text: product.description!,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: ColorData.mainColor,
                  iconColor: Colors.white,
                  iconSize: 36,
                ),
                BigText(
                  text: "\$ ${product.price} x " + "0",
                  textColor: Colors.black54,
                  txtWeight: FontWeight.bold,
                ),
                AppIcon(
                  icon: Icons.add,
                  backgroundColor: ColorData.mainColor,
                  iconColor: Colors.white,
                  iconSize: 26,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            height: Dimensions.height120,
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
                GestureDetector(
                  onTap: () {
                    ElegantNotification.info(
                      title: Text("Notification"),
                      description: Text("This Feature will be available soon"),
                    ).show(context);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white),
                    child: Center(
                      child: Icon(
                        Icons.favorite_rounded,
                        color: ColorData.mainColor,
                      ),
                    ),
                  ),
                ),
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
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: ColorData.mainColor),
                    child: Center(
                        child: BigText(
                            text: "\$ ${product.price} Add to cart",
                            textColor: Colors.white)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
