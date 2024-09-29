import 'package:shop_app/domain/model/Product.dart';
import 'package:shop_app/domain/repository/products_repository.dart';

abstract class ProductsDatasource {
  Future<List<Product>?> getProducts({
    ProductSort? sort,
  });
}
