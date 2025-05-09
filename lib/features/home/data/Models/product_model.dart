class ProductModel {
  int? id;
  String? name;
  String? description;
  int? price;
  List<String>? images;
  int? stock;
  int? categoryId;
  String? categoryName;
  int? storeId;
  String? creationTime;
  String? lastUpdateTime;

  ProductModel(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.images,
      this.stock,
      this.categoryId,
      this.categoryName,
      this.storeId,
      this.creationTime,
      this.lastUpdateTime});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    images = json['images'].cast<String>();
    stock = json['stock'];
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    storeId = json['storeId'];
    creationTime = json['creationTime'];
    lastUpdateTime = json['lastUpdateTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['images'] = this.images;
    data['stock'] = this.stock;
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['storeId'] = this.storeId;
    data['creationTime'] = this.creationTime;
    data['lastUpdateTime'] = this.lastUpdateTime;
    return data;
  }
}
