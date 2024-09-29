/// currentPage : 1
/// numberOfPages : 1
/// limit : 40
library;

class PaginationDto {
  PaginationDto({
      this.currentPage, 
      this.numberOfPages, 
      this.limit,});

  PaginationDto.fromJson(dynamic json) {
    currentPage = json['currentPage'];
    numberOfPages = json['numberOfPages'];
    limit = json['limit'];
  }
  int? currentPage;
  int? numberOfPages;
  int? limit;
PaginationDto copyWith({  int? currentPage,
  int? numberOfPages,
  int? limit,
}) => PaginationDto(  currentPage: currentPage ?? this.currentPage,
  numberOfPages: numberOfPages ?? this.numberOfPages,
  limit: limit ?? this.limit,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['currentPage'] = currentPage;
    map['numberOfPages'] = numberOfPages;
    map['limit'] = limit;
    return map;
  }

}