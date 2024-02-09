import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:givit/shared/model/product_category.dart';
import 'package:givit/shared/model/profile.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required String title,
    required String description,
    required String imageUrl,
    required Profile profile,
    required List<ProductCategory> categories,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
