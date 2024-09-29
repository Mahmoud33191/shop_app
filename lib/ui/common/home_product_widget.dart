import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/domain/model/Product.dart';

class HomeProductWidget extends StatelessWidget {
  final Product product;

  const HomeProductWidget(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 191.w,
        height: 237.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.fromBorderSide(
              BorderSide(width: 2.w, color: Theme.of(context).primaryColor)),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
            child: Stack(
              children: [
                Column(children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16)),
                    child: SizedBox(
                      width: 191.w,
                      height: 128.h,
                      child: CachedNetworkImage(
                        imageBuilder: (context, imageProvider) {
                          return Container(
                            width: 190.w,
                            height: 120.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: imageProvider, fit: BoxFit.contain)),
                          );
                        },
                        imageUrl: product.imageCover ?? "",
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Center(child: Icon(Icons.error)),
                        width: 190.w,
                        height: 120.h,
                      ),
                    ),
                  ),
                  Divider(
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    product.title ?? "",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  Expanded(
                    child: Row(children: [
                      Text(
                        'EGP : ${product.price}',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    product.description ?? "",
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      Text('Review(${product.ratingsAverage})'),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 110.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 19.sp,
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.favorite_border,
                          color: Color(0xff001f85),
                        ),
                      ),
                    ),
                  ),
                )
              ],

            )
        ));
  }
}
