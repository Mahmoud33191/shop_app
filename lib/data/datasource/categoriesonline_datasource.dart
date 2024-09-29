import 'package:injectable/injectable.dart';
import 'package:shop_app/data/api_manager.dart';
import 'package:shop_app/data/datasourceContracts/categories_datasource.dart';

import '../../domain/model/Category.dart';

@Injectable(as: CategoriesDatasource)
class CategoriesOnlineDatasource extends CategoriesDatasource {
  ApiManager apiManager;

  @factoryMethod
  CategoriesOnlineDatasource(this.apiManager);

  @override
  Future<List<Category>?> getCategories() async {
    var response = await apiManager.getCategories();
    return response.data?.map((catDto) => catDto.toCategory()).toList();
  }
}
