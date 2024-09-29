import 'package:injectable/injectable.dart';
import 'package:shop_app/domain/model/Category.dart';
import 'package:shop_app/domain/repository/categories_repository.dart';
@injectable
class CategoriesUseCase {
  CategoriesRepository repository;

 @factoryMethod CategoriesUseCase(this.repository);

  Future<List<Category>?> invoke() {
    return repository.getCategories();
  }
}
