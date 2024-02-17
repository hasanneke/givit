import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:givit/shared/enum/firebase_collections.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/service/firebase_service.dart';

class FBProductService extends FirebaseService<Product> {
  FBProductService()
      : super(
          reference:
              Collection.products.collection() as CollectionReference<Product>,
        );
}
