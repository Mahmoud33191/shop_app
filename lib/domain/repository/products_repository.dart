import 'package:shop_app/domain/model/Product.dart';

abstract class ProductsRepository {
  Future<List<Product>?> getProducts({
    ProductSort? sortBy,
  });
}

enum ProductSort {
  mostSelling("-sold");

  final String value;

  const ProductSort(this.value);
}
