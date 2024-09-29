import 'package:shop_app/domain/model/Brand.dart';

abstract class BrandsRepository {
  Future<List<Brand>?> getBrands();
}