import 'package:equatable/equatable.dart';

class CategoriesInStore extends Equatable {
	final int? id;
	final String? name;
	final String? imgUrl;
	final int? storeId;

	const CategoriesInStore({this.id, this.name, this.imgUrl, this.storeId});

	factory CategoriesInStore.fromJson(Map<String, dynamic> json) {
		return CategoriesInStore(
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
