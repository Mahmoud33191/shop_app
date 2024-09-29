import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/model/Category.dart';

class HomeCategoryWidget extends StatelessWidget {
  final Category category;

  const HomeCategoryWidget(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageBuilder: (context,imageProvider){
            return Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: imageProvider)
              ),
            );
          },
          imageUrl: category.image ?? "",
          placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) =>
          const Center(child: Icon(Icons.error)),
          width: 100,
          height: 100,
        ),
        Text(category.name ?? "")
      ],
    );
  }
}
