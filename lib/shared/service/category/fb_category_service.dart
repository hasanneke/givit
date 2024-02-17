import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:givit/shared/enum/firebase_collections.dart';

import 'package:givit/shared/model/product_category/product_category.dart';
import 'package:givit/shared/service/firebase_service.dart';

class FBCategoryService extends FirebaseService<ProductCategory> {
  FBCategoryService()
      : super(
            reference: Collection.categories.collection()
                as CollectionReference<ProductCategory>);
}
