import 'package:get/get.dart';
import 'package:my_recipe_api/controller/popular_product_controller.dart';
import 'package:my_recipe_api/controller/recommend_product_controller.dart';
import 'package:my_recipe_api/data/Repository/popular_product_repo.dart';
import 'package:my_recipe_api/data/Repository/recommend_product_repo.dart';
import 'package:my_recipe_api/data/api/api_client.dart';
import 'package:my_recipe_api/utilities/app_constant.dart';


// step 1 create init
Future<void> iniit()async{

  // step 5 create a lazy put for api client, repo, controller
  Get.lazyPut(() => ApiClient(appBaseUrl:  AppConstants.BASE_URL));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));

}