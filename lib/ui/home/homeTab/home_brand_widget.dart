import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/model/Brand.dart';

class HomeBrandWidget extends StatelessWidget {
  final Brand brand;
  const HomeBrandWidget(this.brand,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: brand.image ?? "",
          placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) =>
          const Center(child: Icon(Icons.error)),
          width: 50.w,
          height: 50.h,
        ),
        Text(brand.name ?? "")
      ],
    );
  }
}
