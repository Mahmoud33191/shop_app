import 'package:injectable/injectable.dart';
import 'package:shop_app/data/datasourceContracts/categories_datasource.dart';
import 'package:shop_app/domain/repository/categories_repository.dart';

import '../../domain/model/Category.dart';

@Injectable(as: CategoriesRepository)
class CategoriesImpl extends CategoriesRepository {
  CategoriesDatasource onlineDataSource;

  @factoryMethod
  CategoriesImpl(this.onlineDataSource);

  @override
  Future<List<Category>?> getCategories() {
    return onlineDataSource.getCategories();
  }
}
