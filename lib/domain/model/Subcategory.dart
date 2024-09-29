/// _id : "6407f40db575d3b90bf957fa"
/// name : "Computer Accessories"
/// slug : "computer-accessories"
/// category : "6439d2d167d9aa4ca970649f"
library;

class SubCategory {
  SubCategory({
      this.id, 
      this.name, 
      this.slug, 
      this.category,});

  SubCategory.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    slug = json['slug'];
    category = json['category'];
  }
  String? id;
  String? name;
  String? slug;
  String? category;
SubCategory copyWith({  String? id,
  String? name,
  String? slug,
  String? category,
}) => SubCategory(  id: id ?? this.id,
  name: name ?? this.name,
  slug: slug ?? this.slug,
  category: category ?? this.category,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['category'] = category;
    return map;
  }

}