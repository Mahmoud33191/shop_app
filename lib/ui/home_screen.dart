import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/ui/catalog_tab.dart';
import 'package:shop_app/ui/favourite_tab.dart';
import 'package:shop_app/ui/home/homeTab/home_tab.dart';
import 'package:shop_app/ui/login_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'home screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logo.png',
            width: 66,
            height: 22,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.cart,
                    color: Theme.of(context).primaryColor,
                  )),
            )
          ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(56),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor)),
                    hintText: "What do you search for ?",
                    hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 35.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              )),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          items: const [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.widgets_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
          ],
          index: index,
          onTap: (selectedIndex) {
            setState(() {
              index = selectedIndex;
            });
          },
          height: 70,
          color: Theme.of(context).primaryColor,
          animationDuration: const Duration(microseconds: 300),
          animationCurve: Curves.bounceInOut,
          buttonBackgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(child: getSelectedIndex(index: index)));
  }

  Widget getSelectedIndex({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const HomeTab();
        break;
      case 1:
        widget = const CatalogTab();
        break;
      case 2:
        widget = const FavouriteTab();
        break;
      default:
        widget = const LoginTab();
        break;
    }
    return widget;
  }
}
