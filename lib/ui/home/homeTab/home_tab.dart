import 'package:flutter/material.dart';
import 'package:shop_app/domain/model/Category.dart';
import 'package:shop_app/ui/common/home_product_widget.dart';
import 'package:shop_app/ui/home/homeTab/home_brand_widget.dart';
import 'package:shop_app/ui/home/homeTab/home_category_widget.dart';
import 'package:shop_app/ui/home/homeTab/home_tab_viewmodel.dart';
import 'package:shop_app/ui/offers/offers_screen.dart';

import '../../../di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/model/Brand.dart';
import '../../../domain/model/Product.dart';

class HomeTab extends StatefulWidget {


  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  HomeTabViewmodel homeTabViewmodel = getIt<HomeTabViewmodel>();

  @override
  void initState() {
    super.initState();
    homeTabViewmodel.initPage();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeTabViewmodel, HomeTabState>(
      bloc: homeTabViewmodel,
      buildWhen: (previous, current) {
        if (current is ErrorState) return false;
        if (current is LoadingState) return false;
        return true;
      },
      listenWhen: (previous, current) {
        if (current is ErrorState) return true;
        if (current is LoadingState) return true;
        return false;
      },
      builder: (context, state) {
        if (state is SuccessState) {
          return buildSuccessWidget(
              state.categories, state.brands, state.products);
        }
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
      listener: (context, state) {},
    );
  }

  Widget buildSuccessWidget(List<Category>? categories, List<Brand>? brands,
      List<Product>? products) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox.fromSize(
                size: Size.fromHeight(MediaQuery.of(context).size.height * .2),
                child: const OffersScreen(),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox.fromSize(
                size: Size.fromHeight(MediaQuery.of(context).size.height * .35),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Popular Categories'), Text('See All')],
                    ),
                    Expanded(
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return HomeCategoryWidget(categories![index]);
                        },
                        itemCount: categories?.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 60,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 120,
                width: double.infinity,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Popular Brands'), Text('See All')],
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return HomeBrandWidget(brands![index]);
                          },
                          itemCount: brands?.length),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                width: double.infinity,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Most Selling'), Text('See All')],
                    ),
                    Expanded(
                        child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return HomeProductWidget(products![index]);
                      },
                      itemCount: products?.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 16 / 9,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 3,
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
