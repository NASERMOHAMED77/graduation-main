import 'package:equatable/equatable.dart';

import 'image.dart';

class ProductInStore extends Equatable {
	final int? id;
	final String? name;
	final String? description;
	final int? price;
	final List<Image>? images;
	final int? stock;
	final int? barndId;
	final String? brandName;
	final int? categoryId;
	final String? categoryName;
	final int? storeId;
	final DateTime? creationTime;

	const ProductInStore({
		this.id, 
		this.name, 
		this.description, 
		this.price, 
		this.images, 
		this.stock, 
		this.barndId, 
		this.brandName, 
		this.categoryId, 
		this.categoryName, 
		this.storeId, 
		this.creationTime, 
	});

	factory ProductInStore.fromJson(Map<String, dynamic> json) {
		return ProductInStore(
			id: json['id'] as int?,
			name: json['name'] as String?,
			description: json['description'] as String?,
			price: json['price'] as int?,
			images: (json['images'] as List<dynamic>?)
						?.map((e) => Image.fromJson(e as Map<String, dynamic>))
						.toList(),
			stock: json['stock'] as int?,
			barndId: json['barndId'] as int?,
			brandName: json['brandName'] as String?,
			categoryId: json['categoryId'] as int?,
			categoryName: json['categoryName'] as String?,
			storeId: json['storeId'] as int?,
			creationTime: json['creationTime'] == null
						? null
						: DateTime.parse(json['creationTime'] as String),
		);
	}



	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'description': description,
				'price': price,
				'images': images?.map((e) => e.toJson()).toList(),
				'stock': stock,
				'barndId': barndId,
				'brandName': brandName,
				'categoryId': categoryId,
				'categoryName': categoryName,
				'storeId': storeId,
				'creationTime': creationTime?.toIso8601String(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				name,
				description,
				price,
				images,
				stock,
				barndId,
				brandName,
				categoryId,
				categoryName,
				storeId,
				creationTime,
		];
	}
}
