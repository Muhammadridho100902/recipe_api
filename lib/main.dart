import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipe_api/views/Home.dart';
import 'package:my_recipe_api/views/popularfooddetail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: const PopularFoodDetail(),
    );
  }
}

