// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_category.freezed.dart';
part 'product_category.g.dart';

@freezed
class ProductCategory with _$ProductCategory {
  factory ProductCategory({
    required String id,
    required String name,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
}
