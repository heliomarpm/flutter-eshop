import 'dart:convert';

class Product {
  late String title;
  late String image;
  late String description;
  late int price;

  Product({
    required this.title,
    required this.image,
    required this.description,
    required this.price,
  });

  // Product.fromJson2(Map<String, dynamic> json) {
  //   title = json['title'] ?? '';
  //   image = json['image'] ?? '';
  //   description = json['description'] ?? '';
  //   price = json['price']?.toInt() ?? 0;
  // }
  get imageUrl => 'assets/images/$image';

  Product copyWith({
    String? title,
    String? image,
    String? description,
    int? price,
  }) {
    return Product(
      title: title ?? this.title,
      image: image ?? this.image,
      description: description ?? this.description,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
      'description': description,
      'price': price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      title: map['title'] ?? '',
      image: map['image'] ?? '',
      description: map['description'] ?? '',
      price: map['price']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(title: $title, image: $image, description: $description, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.title == title &&
        other.image == image &&
        other.description == description &&
        other.price == price;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        image.hashCode ^
        description.hashCode ^
        price.hashCode;
  }
}
