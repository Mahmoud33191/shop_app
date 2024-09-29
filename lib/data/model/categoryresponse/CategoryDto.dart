import 'package:shop_app/domain/model/Category.dart';

/// _id : "6439d61c0049ad0b52b90051"
/// name : "Music"
/// slug : "music"
/// image : "https://ecommerce.routemisr.com/Route-Academy-categories/1681511964020.jpeg"
/// createdAt : "2023-04-14T22:39:24.365Z"
/// updatedAt : "2023-04-14T22:39:24.365Z"

class CategoryDto {
  CategoryDto({
      this.id, 
      this.name, 
      this.slug, 
      this.image, 
      this.createdAt, 
      this.updatedAt,});

  CategoryDto.fromJson(dynamic json) {
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
CategoryDto copyWith({  String? id,
  String? name,
  String? slug,
  String? image,
  String? createdAt,
  String? updatedAt,
}) => CategoryDto(  id: id ?? this.id,
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
  Category toCategory(){
    return Category(
      id: id,
      name: name,
      slug: slug,
      image: image,
    );
  }

}