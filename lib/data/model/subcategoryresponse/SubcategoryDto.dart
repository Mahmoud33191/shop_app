import 'package:shop_app/domain/model/Subcategory.dart';

/// _id : "6407f40db575d3b90bf957fa"
/// name : "Computer Accessories"
/// slug : "computer-accessories"
/// category : "6439d2d167d9aa4ca970649f"
/// createdAt : "2023-03-08T02:33:49.497Z"
/// updatedAt : "2023-04-14T23:00:38.611Z"

class SubcategoryDto {
  SubcategoryDto({
    this.id,
    this.name,
    this.slug,
    this.category,
    this.createdAt,
    this.updatedAt,
  });

  SubcategoryDto.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    slug = json['slug'];
    category = json['category'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  String? id;
  String? name;
  String? slug;
  String? category;
  String? createdAt;
  String? updatedAt;

  SubcategoryDto copyWith({
    String? id,
    String? name,
    String? slug,
    String? category,
    String? createdAt,
    String? updatedAt,
  }) =>
      SubcategoryDto(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        category: category ?? this.category,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['category'] = category;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }

  SubCategory toSubcategory() {
    return SubCategory(
      name: name,
      slug: slug,
      id: id,
      category: category
    );
  }
}
