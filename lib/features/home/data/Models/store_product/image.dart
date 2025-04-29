import 'package:equatable/equatable.dart';

class Image extends Equatable {
	final String? imageUrl;

	const Image({this.imageUrl});

	factory Image.fromJson(Map<String, dynamic> json) => Image(
				imageUrl: json['imageUrl'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'imageUrl': imageUrl,
			};

	@override
	List<Object?> get props => [imageUrl];
}
