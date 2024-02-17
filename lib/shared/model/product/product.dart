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
    required String imageUrl,
    required Profile profile,
    required List<ProductCategory> categories,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  static List<Product> get dummy => [
        Product(
          title: 'deji batarya',
          description: 'deji batarya açaıklaması',
          imageUrl:
              'https://eral.k12.tr/wp-content/uploads/2022/06/kiyafet-1.jpeg',
          profile: Profile.dummy,
          categories: [],
        ),
        Product(
          title: 'TOMMY HILFIGER ERKEK',
          description: 'TOMMY HILFIGER ERKEK',
          imageUrl:
              'https://productimages.hepsiburada.net/s/0/375-375/9472267878450.jpg',
          profile: Profile.dummy,
          categories: [],
        ),
        Product(
          title: 'deji batarya',
          description: 'deji batarya açaıklaması',
          imageUrl:
              'https://productimages.hepsiburada.net/s/0/375-375/9472267878450.jpg',
          profile: Profile.dummy,
          categories: [
            ProductCategory(
              id: '0',
              name: 'ayakabı',
            ),
            ProductCategory(
              id: '0',
              name: 'tshirt',
            ),
          ],
        ),
      ];
}
