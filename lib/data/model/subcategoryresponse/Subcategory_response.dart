import 'PaginationDto.dart';
import 'SubcategoryDto.dart';

/// results : 60
/// metadata : {"currentPage":1,"numberOfPages":2,"limit":40,"nextPage":2}
/// data : [{"_id":"6407f40db575d3b90bf957fa","name":"Computer Accessories","slug":"computer-accessories","category":"6439d2d167d9aa4ca970649f","createdAt":"2023-03-08T02:33:49.497Z","updatedAt":"2023-04-14T23:00:38.611Z"},{"_id":"6407f402b575d3b90bf957f7","name":"Computer Components","slug":"computer-components","category":"6439d2d167d9aa4ca970649f","createdAt":"2023-03-08T02:33:38.069Z","updatedAt":"2023-04-14T23:00:38.611Z"},{"_id":"6407f3f6b575d3b90bf957f4","name":"Data Storage","slug":"data-storage","category":"6439d2d167d9aa4ca970649f","createdAt":"2023-03-08T02:33:26.513Z","updatedAt":"2023-04-14T23:00:38.611Z"},{"_id":"6407f3e3b575d3b90bf957f1","name":"Networking Products","slug":"networking-products","category":"6439d2d167d9aa4ca970649f","createdAt":"2023-03-08T02:33:07.413Z","updatedAt":"2023-04-14T23:00:38.611Z"},{"_id":"6407f3d8b575d3b90bf957ee","name":"Printers & Accessories","slug":"printers-and-accessories","category":"6439d2d167d9aa4ca970649f","createdAt":"2023-03-08T02:32:56.016Z","updatedAt":"2023-04-14T23:00:38.611Z"},{"_id":"6407f3ccb575d3b90bf957eb","name":"Cameras & Accessories","slug":"cameras-and-accessories","category":"6439d2d167d9aa4ca970649f","createdAt":"2023-03-08T02:32:44.305Z","updatedAt":"2023-04-14T23:00:38.611Z"},{"_id":"6407f3c0b575d3b90bf957e8","name":"Video Games","slug":"video-games","category":"6439d2d167d9aa4ca970649f","createdAt":"2023-03-08T02:32:32.504Z","updatedAt":"2023-04-14T23:00:38.611Z"},{"_id":"6407f3b4b575d3b90bf957e5","name":"Audio & Home Entertainment","slug":"audio-and-home-entertainment","category":"6439d2d167d9aa4ca970649f","createdAt":"2023-03-08T02:32:20.108Z","updatedAt":"2023-04-14T23:00:38.611Z"},{"_id":"6407f3a8b575d3b90bf957e2","name":"Laptops & Accessories","slug":"laptops-and-accessories","category":"6439d2d167d9aa4ca970649f","createdAt":"2023-03-08T02:32:08.305Z","updatedAt":"2023-04-14T23:00:38.611Z"},{"_id":"6407f39bb575d3b90bf957df","name":"TVs, Satellites & Accessories","slug":"tvs-satellites-and-accessories","category":"6439d2d167d9aa4ca970649f","createdAt":"2023-03-08T02:31:55.083Z","updatedAt":"2023-04-14T23:00:38.611Z"},{"_id":"6407f36db575d3b90bf957dc","name":"Mobile Gaming & VR Gadgets","slug":"mobile-gaming-and-vr-gadgets","category":"6439d2f467d9aa4ca97064a8","createdAt":"2023-03-08T02:31:09.131Z","updatedAt":"2023-04-14T23:02:07.472Z"},{"_id":"6407f360b575d3b90bf957d9","name":"Covers & Screen protectors","slug":"covers-and-screen-protectors","category":"6439d2f467d9aa4ca97064a8","createdAt":"2023-03-08T02:30:56.722Z","updatedAt":"2023-04-14T23:02:07.472Z"},{"_id":"6407f34bb575d3b90bf957d6","name":"Chargers & Cables","slug":"chargers-and-cables","category":"6439d2f467d9aa4ca97064a8","createdAt":"2023-03-08T02:30:35.740Z","updatedAt":"2023-04-14T23:02:07.472Z"},{"_id":"6407f33ab575d3b90bf957d3","name":"Power Banks","slug":"power-banks","category":"6439d2f467d9aa4ca97064a8","createdAt":"2023-03-08T02:30:18.353Z","updatedAt":"2023-04-14T23:02:07.472Z"},{"_id":"6407f32eb575d3b90bf957d0","name":"Earphones","slug":"earphones","category":"6439d2f467d9aa4ca97064a8","createdAt":"2023-03-08T02:30:06.169Z","updatedAt":"2023-04-14T23:02:07.472Z"},{"_id":"6407f320b575d3b90bf957cd","name":"Wireless Earphones","slug":"wireless-earphones","category":"6439d2f467d9aa4ca97064a8","createdAt":"2023-03-08T02:29:52.666Z","updatedAt":"2023-04-14T23:02:07.472Z"},{"_id":"6407f313b575d3b90bf957ca","name":"Smartwatches & Accessories","slug":"smartwatches-and-accessories","category":"6439d2f467d9aa4ca97064a8","createdAt":"2023-03-08T02:29:39.392Z","updatedAt":"2023-04-14T23:02:07.472Z"},{"_id":"6407f305b575d3b90bf957c7","name":"All Tablets","slug":"all-tablets","category":"6439d2f467d9aa4ca97064a8","createdAt":"2023-03-08T02:29:25.526Z","updatedAt":"2023-04-14T23:02:07.472Z"},{"_id":"6407f2f7b575d3b90bf957c4","name":"All Mobile Phones","slug":"all-mobile-phones","category":"6439d2f467d9aa4ca97064a8","createdAt":"2023-03-08T02:29:11.689Z","updatedAt":"2023-04-14T23:02:07.472Z"},{"_id":"6407f2ddb575d3b90bf957be","name":"Mobile New Arrivals","slug":"mobile-new-arrivals","category":"6439d2f467d9aa4ca97064a8","createdAt":"2023-03-08T02:28:45.930Z","updatedAt":"2023-04-14T23:02:07.472Z"},{"_id":"6407f276b575d3b90bf957b8","name":"Bags & luggage","slug":"bags-and-luggage","category":"6439d5b90049ad0b52b90048","createdAt":"2023-03-08T02:27:02.780Z","updatedAt":"2023-04-14T23:10:29.386Z"},{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048","createdAt":"2023-03-08T02:26:11.097Z","updatedAt":"2023-04-14T23:10:29.386Z"},{"_id":"6407f219b575d3b90bf957a9","name":"Kid's Fashion","slug":"kid's-fashion","category":"6439d58a0049ad0b52b9003f","createdAt":"2023-03-08T02:25:29.097Z","updatedAt":"2023-04-14T23:13:31.597Z"},{"_id":"6407f208b575d3b90bf957a6","name":"Handbags","slug":"handbags","category":"6439d58a0049ad0b52b9003f","createdAt":"2023-03-08T02:25:12.342Z","updatedAt":"2023-04-14T23:13:31.597Z"},{"_id":"6407f1fdb575d3b90bf957a3","name":"Eyewear","slug":"eyewear","category":"6439d58a0049ad0b52b9003f","createdAt":"2023-03-08T02:25:01.426Z","updatedAt":"2023-04-14T23:13:31.597Z"},{"_id":"6407f1ecb575d3b90bf957a0","name":"Jewellery","slug":"jewellery","category":"6439d58a0049ad0b52b9003f","createdAt":"2023-03-08T02:24:44.971Z","updatedAt":"2023-04-14T23:13:31.597Z"},{"_id":"6407f1e1b575d3b90bf9579d","name":"Watches","slug":"watches","category":"6439d58a0049ad0b52b9003f","createdAt":"2023-03-08T02:24:33.360Z","updatedAt":"2023-04-14T23:13:31.597Z"},{"_id":"6407f1cbb575d3b90bf9579a","name":"Footwear","slug":"footwear","category":"6439d58a0049ad0b52b9003f","createdAt":"2023-03-08T02:24:11.263Z","updatedAt":"2023-04-14T23:13:31.597Z"},{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f","createdAt":"2023-03-08T02:23:56.892Z","updatedAt":"2023-04-14T23:13:31.597Z"},{"_id":"6407f198b575d3b90bf95794","name":"Kitchen & Dining","slug":"kitchen-and-dining","category":"6439d3e067d9aa4ca97064c3","createdAt":"2023-03-08T02:23:20.140Z","updatedAt":"2023-04-14T23:14:14.116Z"},{"_id":"6407f188b575d3b90bf95791","name":"Home Decor","slug":"home-decor","category":"6439d3e067d9aa4ca97064c3","createdAt":"2023-03-08T02:23:04.503Z","updatedAt":"2023-04-14T23:14:14.116Z"},{"_id":"6407f17cb575d3b90bf9578e","name":"Furniture","slug":"furniture","category":"6439d3e067d9aa4ca97064c3","createdAt":"2023-03-08T02:22:52.353Z","updatedAt":"2023-04-14T23:14:14.116Z"},{"_id":"6407f163b575d3b90bf9578b","name":"Tools & Home Improvement","slug":"tools-and-home-improvement","category":"6439d3e067d9aa4ca97064c3","createdAt":"2023-03-08T02:22:27.049Z","updatedAt":"2023-04-14T23:14:14.116Z"},{"_id":"6407f154b575d3b90bf95788","name":"Bath & Bedding","slug":"bath-and-bedding","category":"6439d3e067d9aa4ca97064c3","createdAt":"2023-03-08T02:22:12.068Z","updatedAt":"2023-04-14T23:14:14.116Z"},{"_id":"6407f149b575d3b90bf95785","name":"Drinkware","slug":"drinkware","category":"6439d3e067d9aa4ca97064c3","createdAt":"2023-03-08T02:22:01.376Z","updatedAt":"2023-04-14T23:14:14.116Z"},{"_id":"6407f13cb575d3b90bf95782","name":"Cookware","slug":"cookware","category":"6439d3e067d9aa4ca97064c3","createdAt":"2023-03-08T02:21:48.561Z","updatedAt":"2023-04-14T23:14:14.116Z"},{"_id":"6407f131b575d3b90bf9577f","name":"Large Appliances","slug":"large-appliances","category":"6439d3e067d9aa4ca97064c3","createdAt":"2023-03-08T02:21:37.395Z","updatedAt":"2023-04-14T23:14:14.116Z"},{"_id":"6407f11eb575d3b90bf9577c","name":"Home Appliances","slug":"home-appliances","category":"6439d3e067d9aa4ca97064c3","createdAt":"2023-03-08T02:21:18.532Z","updatedAt":"2023-04-14T23:14:14.116Z"},{"_id":"6407f0cbb575d3b90bf95779","name":"Health & Nutrition","slug":"health-and-nutrition","category":"6439d30b67d9aa4ca97064b1","createdAt":"2023-03-08T02:19:55.616Z","updatedAt":"2023-04-14T23:15:07.402Z"},{"_id":"6407f0bfb575d3b90bf95776","name":"Personal Care","slug":"personal-care","category":"6439d30b67d9aa4ca97064b1","createdAt":"2023-03-08T02:19:43.906Z","updatedAt":"2023-04-14T23:15:07.402Z"}]

class SubcategoryResponse {
  SubcategoryResponse({
      this.results, 
      this.metadata, 
      this.data,});

  SubcategoryResponse.fromJson(dynamic json) {
    results = json['results'];
    metadata = json['metadata'] != null ? PaginationDto.fromJson(json['metadata']) : null;
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(SubcategoryDto.fromJson(v));
      });
    }
  }
  num? results;
  PaginationDto? metadata;
  List<SubcategoryDto>? data;
SubcategoryResponse copyWith({  num? results,
  PaginationDto? metadata,
  List<SubcategoryDto>? data,
}) => SubcategoryResponse(  results: results ?? this.results,
  metadata: metadata ?? this.metadata,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['results'] = results;
    if (metadata != null) {
      map['metadata'] = metadata?.toJson();
    }
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}