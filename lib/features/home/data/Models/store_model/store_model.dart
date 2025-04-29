import 'package:equatable/equatable.dart';

class StoreModel extends Equatable {
	final int? id;
	final String? storeName;
	final String? description;
	final String? storeImg;
	final String? storeBackGroundLogo;
	final int? storeTempletes;
	final List<dynamic>? storeCategories;
	final List<dynamic>? storeProducts;
	final int? productCount;

	const StoreModel({
		this.id, 
		this.storeName, 
		this.description, 
		this.storeImg, 
		this.storeBackGroundLogo, 
		this.storeTempletes, 
		this.storeCategories, 
		this.storeProducts, 
		this.productCount, 
	});

	factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
				id: json['id'] as int?,
				storeName: json['storeName'] as String?,
				description: json['description'] as String?,
				storeImg: json['storeImg'] as String?,
				storeBackGroundLogo: json['storeBackGroundLogo'] as String?,
				storeTempletes: json['storeTempletes'] as int?,
				storeCategories: json['storeCategories'] as List<dynamic>?,
				storeProducts: json['storeProducts'] as List<dynamic>?,
				productCount: json['productCount'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'storeName': storeName,
				'description': description,
				'storeImg': storeImg,
				'storeBackGroundLogo': storeBackGroundLogo,
				'storeTempletes': storeTempletes,
				'storeCategories': storeCategories,
				'storeProducts': storeProducts,
				'productCount': productCount,
			};

	@override
	List<Object?> get props {
		return [
				id,
				storeName,
				description,
				storeImg,
				storeBackGroundLogo,
				storeTempletes,
				storeCategories,
				storeProducts,
				productCount,
		];
	}
}
