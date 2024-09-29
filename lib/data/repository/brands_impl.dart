import 'package:injectable/injectable.dart';
import 'package:shop_app/data/datasourceContracts/brands_datasource.dart';
import 'package:shop_app/domain/repository/brands_repository.dart';

import '../../domain/model/Brand.dart';

@Injectable(as: BrandsRepository)
class BrandsImpl extends BrandsRepository {
  BrandsDatasource onLineDataSource;

  @factoryMethod BrandsImpl(this.onLineDataSource);

  @override
  Future<List<Brand>?> getBrands() {
    return onLineDataSource.getBrands();
  }
}
