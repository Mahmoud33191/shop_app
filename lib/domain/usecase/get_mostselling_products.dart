import 'package:injectable/injectable.dart';
import 'package:shop_app/domain/model/Product.dart';
import 'package:shop_app/domain/repository/products_repository.dart';

@injectable
class GetMostSellingProducts {
  ProductsRepository productsRepository;

  @factoryMethod
  GetMostSellingProducts(this.productsRepository);

  Future<List<Product>?> invoke() {
    return productsRepository.getProducts(sortBy: ProductSort.mostSelling);
  }

}
