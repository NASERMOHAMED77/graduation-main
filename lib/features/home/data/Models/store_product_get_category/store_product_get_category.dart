class CategoryModel {
  int? id;
  String? name;
  String? imgUrl;
  int? storeId;

  CategoryModel({this.id, this.name, this.imgUrl, this.storeId});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imgUrl = json['imgUrl'];
    storeId = json['storeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['imgUrl'] = this.imgUrl;
    data['storeId'] = this.storeId;
    return data;
  }
}