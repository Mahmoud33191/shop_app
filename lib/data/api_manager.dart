import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shop_app/data/model/brandresponse/Brands_response.dart';

import 'package:shop_app/data/model/categoryresponse/Category_response.dart';
import 'package:shop_app/data/model/productresponse/Product_response.dart';
import 'package:shop_app/domain/repository/products_repository.dart';

@singleton
@injectable
class ApiManager {
  static const String baseUrl = 'ecommerce.routemisr.com';

  Future<CategoryResponse> getCategories() async {
    var url = Uri.https(baseUrl, "api/v1/categories");
    var response = await http.get(url);
    var categoriesResponse =
        CategoryResponse.fromJson(jsonDecode(response.body));
    return categoriesResponse;
  }

  Future<BrandsResponse> getBrands() async {
    var url = Uri.https(baseUrl, "api/v1/brands");
    var response = await http.get(url);
    var brandsResponse = BrandsResponse.fromJson(jsonDecode(response.body));
    return brandsResponse;
  }

  Future<ProductResponse> getProducts({ProductSort? sort}) async {
    var params = {};
    if(sort!= null){
      params['sort'] = sort.value;
    }
    var url = Uri.https(baseUrl, "api/v1/products");
    var response = await http.get(url);
    var productResponse = ProductResponse.fromJson(jsonDecode(response.body));
    return productResponse;
  }
}
