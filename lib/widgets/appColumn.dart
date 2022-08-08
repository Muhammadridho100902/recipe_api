// ignore_for_file: unnecessary_const, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:my_recipe_api/utilities/color.dart';
import 'package:my_recipe_api/widgets/bigText.dart';
import 'package:my_recipe_api/widgets/expandable_text_widget.dart';
import 'package:my_recipe_api/widgets/smallText.dart';

class AppColumn extends StatelessWidget {
  final String foodName;
  final String desc;
  final String star;
  final String price;
  const AppColumn({
    Key? key,
    required this.foodName,
    required this.desc,
    required this.star,required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: foodName, textColor: Colors.black),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => const Icon(
                  Icons.star,
                  color: ColorData.mainColor,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: star, textColor: Colors.grey),
            const SizedBox(
              width: 10,
            ),
            const SmallText(text: "1267", textColor: Colors.grey),
            const SizedBox(
              width: 5,
            ),
            const SmallText(text: "Comments", textColor: Colors.grey)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SmallText(text: "Price : \$ ", textColor: Colors.black,),
            SmallText(text: price, textColor: Colors.black),
          ],
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     IconAndWidgets(
        //       iconData: Icons.circle_sharp,
        //       iconColor: Colors.yellow.shade600,
        //       txtColor: Colors.grey,
        //       Text: 'Normal',
        //     ),
        //     const SizedBox(
        //       width: 10,
        //     ),
        //     const IconAndWidgets(
        //       iconData: Icons.location_on,
        //       iconColor: ColorData.mainColor,
        //       txtColor: Colors.grey,
        //       Text: '1.7Km',
        //     ),
        //     const SizedBox(
        //       width: 10,
        //     ),
        //     IconAndWidgets(
        //       iconData: Icons.access_time,
        //       iconColor: Colors.yellow.shade900,
        //       txtColor: Colors.grey,
        //       Text: '32mins',
        //     ),
        //   ],
        // ),
        const SizedBox(
          height: 10,
        ),
        BigText(text: "Introduce", textColor: Colors.black),
        const SizedBox(
          height: 10,
        ),
        Expandable_Text(text: desc)
      ],
    );
  }
}
