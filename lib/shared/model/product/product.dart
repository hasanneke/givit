import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:givit/shared/model/product_category/product_category.dart';
import 'package:givit/shared/model/profile/profile.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const Product._();
  factory Product({
    @Default('') String id,
    required String title,
    required String description,
    String? imageUrl,
    required Profile profile,
    required List<ProductCategory> categories,
    bool? isReceiverPayment,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
