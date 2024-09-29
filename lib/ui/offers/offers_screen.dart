import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  final myItems = [
    Image.asset("assets/images/headphone.png"),
    Image.asset("assets/images/makeup.png"),
    Image.asset("assets/images/laptop.png"),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: myItems,
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            setState(() {
              currentIndex = index;
            });
          },
          height: 400.h,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ));
  }
}
