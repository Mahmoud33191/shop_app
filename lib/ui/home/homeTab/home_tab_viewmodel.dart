import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_app/domain/usecase/brands_usecase.dart';
import 'package:shop_app/domain/usecase/get_mostselling_products.dart';

import '../../../domain/model/Brand.dart';
import '../../../domain/model/Category.dart';
import '../../../domain/model/Product.dart';
import '../../../domain/usecase/categories_usecase.dart';

@injectable
class HomeTabViewmodel extends Cubit<HomeTabState> {
  CategoriesUseCase categoriesUseCase;
  BrandsUseCase brandsUseCase;
  GetMostSellingProducts getMostSellingProducts;

  @factoryMethod
  HomeTabViewmodel(
      this.categoriesUseCase, this.brandsUseCase, this.getMostSellingProducts)
      : super(LoadingState());

  void initPage() async {
    emit(LoadingState());
    try {
      var categories = await categoriesUseCase.invoke();
      var brands = await brandsUseCase.invoke();
      var products = await getMostSellingProducts.invoke();
      emit(SuccessState(categories, brands, products));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}

sealed class HomeTabState {}

class LoadingState extends HomeTabState {}

class ErrorState extends HomeTabState {
  String? message;

  ErrorState([this.message]);
}

class SuccessState extends HomeTabState {
  List<Category>? categories;
  List<Brand>? brands;
  List<Product>? products;

  SuccessState(this.categories, this.brands, this.products);
}
