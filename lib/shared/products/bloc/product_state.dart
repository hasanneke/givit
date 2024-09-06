// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:givit/shared/model/product/product.dart';

part 'product_state.freezed.dart';
part 'product_state.g.dart';

@freezed
class ProductsState with _$ProductsState {
  factory ProductsState({
    @Default([]) List<Product> products,
  }) = _ProductsState;

  factory ProductsState.fromJson(Map<String, dynamic> json) =>
      _$ProductsStateFromJson(json);
}
