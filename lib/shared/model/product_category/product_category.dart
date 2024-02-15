// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'product_category.g.dart';

@JsonSerializable()
class ProductCategory {
  final String id;
  final String name;
  ProductCategory({
    required this.id,
    required this.name,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
  static List<ProductCategory> get dummy => [
        ProductCategory(id: '1', name: 'Hepsi'),
        ProductCategory(id: '1', name: 'Ayakabı'),
        ProductCategory(id: '1', name: 'Kıyafet'),
        ProductCategory(id: '1', name: 'Mutfak'),
        ProductCategory(id: '1', name: 'Eşya'),
        ProductCategory(id: '1', name: 'Çocuk'),
      ];
}
