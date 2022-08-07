import 'package:get/get.dart';
import 'package:my_recipe_api/data/Repository/recommend_product_repo.dart';
import 'package:my_recipe_api/model/productModel.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});

  List<ProductModel> _recommendedProductList = [];
  List<ProductModel> get recommendedProductList => _recommendedProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response = await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      print("Got Products");
      _recommendedProductList = [];
      // step 8
      _recommendedProductList.addAll(Product.fromJson(response.body).Products);
      _isLoaded = true;
      update();
    } else {
      // print("No Data");
    }
  }
}
