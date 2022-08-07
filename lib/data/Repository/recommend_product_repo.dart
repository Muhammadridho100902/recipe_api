import 'package:get/get.dart';
import 'package:my_recipe_api/data/api/api_client.dart';
import 'package:my_recipe_api/utilities/app_constant.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;
 RecommendedProductRepo({required this.apiClient});

  Future<Response>getRecommendedProductList()async{
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}