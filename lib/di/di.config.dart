// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/api_manager.dart' as _i704;
import '../data/datasource/brandsonlie_datasource.dart' as _i397;
import '../data/datasource/categoriesonline_datasource.dart' as _i117;
import '../data/datasource/productonline_datasource.dart' as _i224;
import '../data/datasourceContracts/brands_datasource.dart' as _i970;
import '../data/datasourceContracts/categories_datasource.dart' as _i560;
import '../data/datasourceContracts/products_datasource.dart' as _i3;
import '../data/repository/brands_impl.dart' as _i703;
import '../data/repository/categories_impl.dart' as _i212;
import '../data/repository/products_impl.dart' as _i369;
import '../domain/repository/brands_repository.dart' as _i56;
import '../domain/repository/categories_repository.dart' as _i716;
import '../domain/repository/products_repository.dart' as _i613;
import '../domain/usecase/brands_usecase.dart' as _i42;
import '../domain/usecase/categories_usecase.dart' as _i805;
import '../domain/usecase/get_mostselling_products.dart' as _i812;
import '../ui/home/homeTab/home_tab_viewmodel.dart' as _i1052;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i704.ApiManager>(() => _i704.ApiManager());
    gh.factory<_i560.CategoriesDatasource>(
        () => _i117.CategoriesOnlineDatasource(gh<_i704.ApiManager>()));
    gh.factory<_i970.BrandsDatasource>(
        () => _i397.BrandsOnlineDatasource(gh<_i704.ApiManager>()));
    gh.factory<_i3.ProductsDatasource>(
        () => _i224.ProductOnlineDatasource(gh<_i704.ApiManager>()));
    gh.factory<_i56.BrandsRepository>(
        () => _i703.BrandsImpl(gh<_i970.BrandsDatasource>()));
    gh.factory<_i716.CategoriesRepository>(
        () => _i212.CategoriesImpl(gh<_i560.CategoriesDatasource>()));
    gh.factory<_i805.CategoriesUseCase>(
        () => _i805.CategoriesUseCase(gh<_i716.CategoriesRepository>()));
    gh.factory<_i42.BrandsUseCase>(
        () => _i42.BrandsUseCase(gh<_i56.BrandsRepository>()));
    gh.factory<_i613.ProductsRepository>(
        () => _i369.ProductsImpl(gh<_i3.ProductsDatasource>()));
    gh.factory<_i812.GetMostSellingProducts>(
        () => _i812.GetMostSellingProducts(gh<_i613.ProductsRepository>()));
    gh.factory<_i1052.HomeTabViewmodel>(() => _i1052.HomeTabViewmodel(
          gh<_i805.CategoriesUseCase>(),
          gh<_i42.BrandsUseCase>(),
          gh<_i812.GetMostSellingProducts>(),
        ));
    return this;
  }
}
