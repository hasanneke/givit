import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:givit/shared/model/product/product.dart';

part 'favorite.freezed.dart';
part 'favorite.g.dart';

@freezed
class Favorite with _$Favorite {
  factory Favorite({required String userId, required Product product}) =
      _Favorite;

  factory Favorite.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFromJson(json);
}
