// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_recipe_api/utilities/color.dart';
import 'package:my_recipe_api/widgets/appIcon.dart';
import 'package:my_recipe_api/widgets/bigText.dart';
import 'package:my_recipe_api/widgets/expandable_text_widget.dart';

class RecommendFoodDetail extends StatelessWidget {
  const RecommendFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.clear_rounded,
                  backgroundColor: Colors.white54,
                  iconColor: Colors.black54,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  backgroundColor: Colors.white54,
                  iconColor: Colors.black54,
                ),
              ],
            ),
            bottom: PreferredSize(
              child: Container(
                padding: EdgeInsets.only(
                  top: 5,
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
                  text: "Sliver App Bar",
                  textColor: Colors.black,
                )),
              ),
              preferredSize: Size.fromHeight(20),
            ),
            pinned: true,
            backgroundColor: ColorData.mainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/img1.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Expandable_Text(
                    text:
                        "This is an e-commerce app for food delivery using flutter with backend as crash course tutorial for iOS and Android. This is a shopping app with backend of Laravel and Laravel admin panel using restful api complete CRUD operations. We also used firebase for notification. This tutorial covers complete shopping cart, placing orders, signup or registration, sign-in or login, payment.This is an e-commerce app for food delivery using flutter with backend as crash course tutorial for iOS and Android. This is a shopping app with backend of Laravel and Laravel admin panel using restful api complete CRUD operations. We also used firebase for notification. This tutorial covers complete shopping cart, placing orders, signup or registration, sign-in or login, payment.This is an e-commerce app for food delivery using flutter with backend as crash course tutorial for iOS and Android. This is a shopping app with backend of Laravel and Laravel admin panel using restful api complete CRUD operations. We also used firebase for notification. This tutorial covers complete shopping cart, placing orders, signup or registration, sign-in or login, payment.This is an e-commerce app for food delivery using flutter with backend as crash course tutorial for iOS and Android. This is a shopping app with backend of Laravel and Laravel admin panel using restful api complete CRUD operations. We also used firebase for notification. This tutorial covers complete shopping cart, placing orders, signup or registration, sign-in or login, payment.This is an e-commerce app for food delivery using flutter with backend as crash course tutorial for iOS and Android. This is a shopping app with backend of Laravel and Laravel admin panel using restful api complete CRUD operations. We also used firebase for notification. This tutorial covers complete shopping cart, placing orders, signup or registration, sign-in or login, payment.This is an e-commerce app for food delivery using flutter with backend as crash course tutorial for iOS and Android. This is a shopping app with backend of Laravel and Laravel admin panel using restful api complete CRUD operations. We also used firebase for notification. This tutorial covers complete shopping cart, placing orders, signup or registration, sign-in or login, payment.This is an e-commerce app for food delivery using flutter with backend as crash course tutorial for iOS and Android. This is a shopping app with backend of Laravel and Laravel admin panel using restful api complete CRUD operations. We also used firebase for notification. This tutorial covers complete shopping cart, placing orders, signup or registration, sign-in or login, payment.",
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
                  text: "\$12.88" + "x" + "0",
                  textColor: Colors.black,
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
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 130,
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
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Center(
                    child: Icon(
                      Icons.favorite_rounded,
                      color: ColorData.mainColor,
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: 240,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorData.mainColor),
                  child: Center(
                      child: BigText(
                          text: "Rp.10.000 Add to cart",
                          textColor: Colors.white)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
