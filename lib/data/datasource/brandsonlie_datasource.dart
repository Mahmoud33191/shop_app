import 'package:injectable/injectable.dart';
import 'package:shop_app/data/api_manager.dart';
import 'package:shop_app/data/datasourceContracts/brands_datasource.dart';

import '../../domain/model/Brand.dart';
@Injectable(as:BrandsDatasource )
class BrandsOnlineDatasource extends BrandsDatasource{
  ApiManager apiManager;
 @factoryMethod BrandsOnlineDatasource(this.apiManager);
  @override
  Future<List<Brand>?> getBrands()async {
    var response = await apiManager.getBrands();
    return response.data?.map((brandDto)=> brandDto.toBrand()).toList();

  }

}