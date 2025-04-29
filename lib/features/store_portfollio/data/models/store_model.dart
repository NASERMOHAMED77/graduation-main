class StoreModel {
  int id;
  String storeName;
  String description;
  String storeImg;
  String storeBackGroundLogo;
  int storeTempletes;
  List<StoreCategory> storeCategories;
  List<StoreProduct> storeProducts;
  int productCount;

  StoreModel({
    required this.id,
    required this.storeName,
    required this.description,
    required this.storeImg,
    required this.storeBackGroundLogo,
    required this.storeTempletes,
    required this.storeCategories,
    required this.storeProducts,
    required this.productCount,
  });

  factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
        id: json["id"],
        storeName: json["storeName"],
        description: json["description"],
        storeImg: json["storeImg"],
        storeBackGroundLogo: json["storeBackGroundLogo"],
        storeTempletes: json["storeTempletes"],
        storeCategories: List<StoreCategory>.from(
            json["storeCategories"].map((x) => StoreCategory.fromJson(x))),
        storeProducts: List<StoreProduct>.from(
            json["storeProducts"].map((x) => StoreProduct.fromJson(x))),
        productCount: json["productCount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "storeName": storeName,
        "description": description,
        "storeImg": storeImg,
        "storeBackGroundLogo": storeBackGroundLogo,
        "storeTempletes": storeTempletes,
        "storeCategories":
            List<dynamic>.from(storeCategories.map((x) => x.toJson())),
        "storeProducts":
            List<dynamic>.from(storeProducts.map((x) => x.toJson())),
        "productCount": productCount,
      };
}

class StoreCategory {
  int id;
  String name;
  String imgUrl;
  int storeId;

  StoreCategory({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.storeId,
  });

  factory StoreCategory.fromJson(Map<String, dynamic> json) => StoreCategory(
        id: json["id"],
        name: json["name"],
        imgUrl: json["imgUrl"],
        storeId: json["storeId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "imgUrl": imgUrl,
        "storeId": storeId,
      };
}

class StoreProduct {
  int id;
  String name;
  String description;
  double price;
  List<Image> images;
  int stock;
  int barndId;
  dynamic brandName;
  int categoryId;
  String categoryName;
  int storeId;
  DateTime creationTime;

  StoreProduct({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.stock,
    required this.barndId,
    required this.brandName,
    required this.categoryId,
    required this.categoryName,
    required this.storeId,
    required this.creationTime,
  });

  factory StoreProduct.fromJson(Map<String, dynamic> json) => StoreProduct(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"]?.toDouble(),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        stock: json["stock"],
        barndId: json["barndId"],
        brandName: json["brandName"],
        categoryId: json["categoryId"],
        categoryName: json["categoryName"]!,
        storeId: json["storeId"],
        creationTime: DateTime.parse(json["creationTime"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "stock": stock,
        "barndId": barndId,
        "brandName": brandName,
        "categoryId": categoryId,
        "categoryName": categoryName,
        "storeId": storeId,
        "creationTime": creationTime.toIso8601String(),
      };
}

// enum CategoryName { CLOTHING, ELECTRONICS ,}

// final categoryNameValues = EnumValues({
//   "Clothing": CategoryName.CLOTHING,
//   "Electronics": CategoryName.ELECTRONICS
// });

class Image {
  String imageUrl;

  Image({
    required this.imageUrl,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "imageUrl": imageUrl,
      };
}

// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
