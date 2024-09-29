import 'package:shop_app/domain/model/Category.dart';

abstract class CategoriesRepository {
  Future<List<Category>?> getCategories();
}