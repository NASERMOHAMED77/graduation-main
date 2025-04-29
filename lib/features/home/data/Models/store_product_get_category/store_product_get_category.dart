import 'package:equatable/equatable.dart';

class StoreProductGetCategory extends Equatable {
	final int? id;
	final String? name;
	final String? imgUrl;
	final int? storeId;

	const StoreProductGetCategory({
		this.id, 
		this.name, 
		this.imgUrl, 
		this.storeId, 
	});

	factory StoreProductGetCategory.fromJson(Map<String, dynamic> json) {
		return StoreProductGetCategory(
			id: json['id'] as int?,
			name: json['name'] as String?,
			imgUrl: json['imgUrl'] as String?,
			storeId: json['storeId'] as int?,
		);
	}



	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'imgUrl': imgUrl,
				'storeId': storeId,
			};

	@override
	List<Object?> get props => [id, name, imgUrl, storeId];
}
