import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:givit/shared/model/product/product.dart';

part 'product_mark.freezed.dart';
part 'product_mark.g.dart';

@freezed
class ProductMark with _$ProductMark {
  factory ProductMark({
    @Default('') String id,
    required String userId,
    required Product product,
  }) = _ProductMark;

  factory ProductMark.fromJson(Map<String, dynamic> json) =>
      _$ProductMarkFromJson(json);
}
