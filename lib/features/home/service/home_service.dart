import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:givit/shared/model/product_category/product_category.dart';

class HomeService {
  Future<List<ProductCategory>> fetchCategories() async {
    List<ProductCategory> categories = [];
    final res = await FirebaseFirestore.instance.collection('categories').get();
    for (var doc in res.docs) {
      categories.add(ProductCategory.fromJson(doc.data()));
    }
    return categories;
  }
}
