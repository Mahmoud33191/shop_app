import 'package:injectable/injectable.dart';
import 'package:shop_app/data/datasourceContracts/products_datasource.dart';
import 'package:shop_app/domain/repository/products_repository.dart';

import '../../domain/model/Product.dart';

@Injectable(as: ProductsRepository)
class ProductsImpl extends ProductsRepository {
  ProductsDatasource onLineDataSource;

  @factoryMethod
  ProductsImpl(this.onLineDataSource);

  @override
  Future<List<Product>?> getProducts({ProductSort? sortBy}) {
    return onLineDataSource.getProducts(sort: sortBy);
  }
}
