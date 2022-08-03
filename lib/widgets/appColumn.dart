// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:my_recipe_api/utilities/color.dart';
import 'package:my_recipe_api/widgets/IconAndWidgets.dart';
import 'package:my_recipe_api/widgets/bigText.dart';
import 'package:my_recipe_api/widgets/expandable_text_widget.dart';
import 'package:my_recipe_api/widgets/smallText.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BigText(text: "Briani", textColor: Colors.black),
        const SizedBox(
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
            const SmallText(text: "4.5", textColor: Colors.grey),
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
          height: 30,
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
            const SizedBox(
              width: 10,
            ),
            const IconAndWidgets(
              iconData: Icons.location_on,
              iconColor: ColorData.mainColor,
              txtColor: Colors.grey,
              Text: '1.7Km',
            ),
            const SizedBox(
              width: 10,
            ),
            IconAndWidgets(
              iconData: Icons.access_time,
              iconColor: Colors.yellow.shade900,
              txtColor: Colors.grey,
              Text: '32mins',
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const BigText(text: "Introduce", textColor: Colors.black),
        const SizedBox(height: 10,),
        const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: const Expandable_Text(
              text:
                  'This is an e-commerce app for food delivery using flutter with backend as crash course tutorial for iOS and Android. This is a shopping app with backend of Laravel and Laravel admin panel using restful api complete CRUD operations. We also used firebase for notification. This tutorial covers complete shopping cart, placing orders, signup or registration, sign-in or login, payment.',
            ))
      ],
    );
  }
}
