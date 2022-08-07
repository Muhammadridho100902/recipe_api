import 'package:get/get.dart';
import 'package:my_recipe_api/data/api/api_client.dart';
import 'package:my_recipe_api/utilities/app_constant.dart';


// step 3 create popular product repo
class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response>getPopularProductList()async{
    return await apiClient.getData("/api/v1/products/popular");
  }
}