// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:givit/shared/enum/firebase_collections.dart';

import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/model/product_category/product_category.dart';
import 'package:givit/shared/service/category/fb_category_service.dart';
import 'package:givit/shared/service/firebase_service.dart';
import 'package:givit/shared/service/product/fb_product_service.dart';

abstract class HomeService {
  Future<List<Product>> fetchProducts();
  Future<List<ProductCategory>> fetchCategories();
}

class FBHomeService extends HomeService {
  late FirebaseService<ProductCategory> categoryService;
  late FirebaseService<Product> productService;
  FBHomeService() {
    categoryService = FBCategoryService();
    productService = FBProductService();
  }
  @override
  Future<List<ProductCategory>> fetchCategories() async {
    final res = await categoryService.fetch();
    return res;
  }

  @override
  Future<List<Product>> fetchProducts() async {
    final res = await productService.fetch();
    return res;
  }
}
