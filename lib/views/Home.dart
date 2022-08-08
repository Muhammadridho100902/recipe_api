// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:my_recipe_api/utilities/color.dart';
import 'package:my_recipe_api/utilities/dimension.dart';
import 'package:my_recipe_api/widgets/bigText.dart';
import 'package:my_recipe_api/views/foodbodyPage.dart';
import 'package:my_recipe_api/widgets/smallText.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // header
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: 'Indonesia',
                      textColor: ColorData.mainColor,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: 'Jakarta',
                          textColor: Colors.black,
                        ),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    ElegantNotification.info(
                      title: Text("Notification"),
                      description: Text("This Feature will be available soon"),
                    ).show(context);
                  },
                  child: Container(
                    width: Dimensions.height45,
                    height: Dimensions.width45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: ColorData.buttonColor,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.white,
                    )),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //body
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: FoodPageBody(),
            ),
          ),
        ],
      ),
    );
  }
}
