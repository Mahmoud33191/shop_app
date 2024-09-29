import 'package:injectable/injectable.dart';
import 'package:shop_app/data/api_manager.dart';
import 'package:shop_app/data/datasourceContracts/products_datasource.dart';

import '../../domain/model/Product.dart';
import '../../domain/repository/products_repository.dart';

@Injectable(as: ProductsDatasource)
class ProductOnlineDatasource extends ProductsDatasource {
  ApiManager apiManager;

  @factoryMethod
  ProductOnlineDatasource(this.apiManager);

  @override
  Future<List<Product>?> getProducts({ProductSort? sort})async {
    var response = await apiManager.getProducts(sort: sort);
    return response.data?.map((productDto) => productDto.toProduct()).toList();
  }
}
