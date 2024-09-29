import 'package:shop_app/domain/model/Brand.dart';

abstract class BrandsDatasource{
  Future<List<Brand>?> getBrands();
}