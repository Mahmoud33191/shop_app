import 'package:injectable/injectable.dart';
import 'package:shop_app/domain/model/Brand.dart';
import 'package:shop_app/domain/repository/brands_repository.dart';

@injectable
class BrandsUseCase{
  BrandsRepository brandsRepository;
  @factoryMethod BrandsUseCase(this.brandsRepository);
  Future<List<Brand>?> invoke(){
    return brandsRepository.getBrands();
  }
}