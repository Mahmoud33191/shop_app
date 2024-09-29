import 'package:shop_app/domain/model/Brand.dart';

/// _id : "64089fe824b25627a25315d1"
/// name : "Canon"
/// slug : "canon"
/// image : "https://ecommerce.routemisr.com/Route-Academy-brands/1678286824747.png"
/// createdAt : "2023-03-08T14:47:04.912Z"
/// updatedAt : "2023-03-08T14:47:04.912Z"

class BrandsDto {
  BrandsDto({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  BrandsDto.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  String? id;
  String? name;
  String? slug;
  String? image;
  String? createdAt;
  String? updatedAt;

  BrandsDto copyWith({
    String? id,
    String? name,
    String? slug,
    String? image,
    String? createdAt,
    String? updatedAt,
  }) =>
      BrandsDto(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        image: image ?? this.image,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['image'] = image;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }

  Brand toBrand() {
    return Brand(
      image: image,
      name: name,
      id: id,
      slug: slug,
    );
  }
}
