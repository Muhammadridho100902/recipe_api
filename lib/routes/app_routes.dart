// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors

import 'package:get/get.dart';
import 'package:my_recipe_api/views/Home.dart';
import 'package:my_recipe_api/views/popularfooddetail.dart';
import 'package:my_recipe_api/views/recommendFoodDetail.dart';

class AppRoutes {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";

  static String getInitail() => "$initial";
  static String getPopularFood(int pageId) => "$popularFood?pageId=$pageId";
  static String getRecommendedFood(int pageId) =>
      "$recommendedFood?pageId=$pageId";

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => HomePage()),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return RecommendFoodDetail(pageId: int.parse(pageId!));
        },
        // for animation
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetail(
            pageId: int.parse(pageId!),
          );
        },
        // for animation
        transition: Transition.fadeIn),
  ];
}
