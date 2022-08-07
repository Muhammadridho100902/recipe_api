import 'package:get/get.dart';
import 'package:my_recipe_api/data/Repository/popular_product_repo.dart';
import 'package:my_recipe_api/model/productModel.dart';

// step 4 create controller for the repo
class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});

  List<ProductModel> _popularProductList = [];
  List<ProductModel> get popularProductList => _popularProductList;

  Future<void> getPopularProductList()async{
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode==200) {
      print("Got Products");
      _popularProductList = [];
      // step 8
      _popularProductList.addAll(Product.fromJson(response.body).Products);
      // print(_popularProductList);
      update();
    } else {
      // print("No Data");
    }
  }
}