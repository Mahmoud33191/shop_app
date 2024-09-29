import 'package:shop_app/domain/model/Category.dart';

abstract class CategoriesDatasource{
  Future<List<Category>?> getCategories();
}