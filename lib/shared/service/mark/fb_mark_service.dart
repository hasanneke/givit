import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:givit/shared/enum/firebase_collections.dart';
import 'package:givit/shared/model/mark/product_mark.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/service/firebase_service.dart';

class FBProductMarkService extends FirebaseService<ProductMark> {
  FBProductMarkService()
      : super(
            reference: Collection.marks.collection()
                as CollectionReference<ProductMark>);
}
