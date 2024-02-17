import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:givit/shared/model/buy_request/buy_request.dart';
import 'package:givit/shared/model/comment/comment.dart';
import 'package:givit/shared/model/mark/product_mark.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/model/product_category/product_category.dart';
import 'package:givit/shared/model/profile/profile.dart';

enum Collection {
  products,
  categories,
  profiles,
  productRequests,
  comments,
  requests,
  marks;

  CollectionReference collection<T>() {
    switch (this) {
      case Collection.products:
        return FirebaseFirestore.instance
            .collection(name)
            .withConverter<Product>(
              fromFirestore: (snapshot, options) =>
                  Product.fromJson(snapshot.data() ?? {})
                      .copyWith(id: snapshot.id),
              toFirestore: (value, options) => value.toJson(),
            );
      case Collection.categories:
        return FirebaseFirestore.instance
            .collection(name)
            .withConverter<ProductCategory>(
              fromFirestore: (snapshot, options) =>
                  ProductCategory.fromJson(snapshot.data() ?? {})
                      .copyWith(id: snapshot.id),
              toFirestore: (value, options) => value.toJson(),
            );
      case Collection.profiles:
        return FirebaseFirestore.instance
            .collection(name)
            .withConverter<Profile>(
              fromFirestore: (snapshot, options) =>
                  Profile.fromJson(snapshot.data() ?? {})
                      .copyWith(id: snapshot.id),
              toFirestore: (value, options) => value.toJson(),
            );
      case Collection.productRequests:
        return FirebaseFirestore.instance
            .collection(name)
            .withConverter<BuyRequest>(
              fromFirestore: (snapshot, options) =>
                  BuyRequest.fromJson(snapshot.data() ?? {})
                      .copyWith(id: snapshot.id),
              toFirestore: (value, options) => value.toJson(),
            );
      case Collection.comments:
        return FirebaseFirestore.instance
            .collection(name)
            .withConverter<Comment>(
              fromFirestore: (snapshot, options) =>
                  Comment.fromJson(snapshot.data() ?? {})
                      .copyWith(id: snapshot.id),
              toFirestore: (value, options) => value.toJson(),
            );
      case Collection.requests:
        return FirebaseFirestore.instance
            .collection(name)
            .withConverter<BuyRequest>(
              fromFirestore: (snapshot, options) =>
                  BuyRequest.fromJson(snapshot.data() ?? {})
                      .copyWith(id: snapshot.id),
              toFirestore: (value, options) => value.toJson(),
            );
      case Collection.marks:
        return FirebaseFirestore.instance
            .collection(name)
            .withConverter<ProductMark>(
              fromFirestore: (snapshot, options) =>
                  ProductMark.fromJson(snapshot.data() ?? {})
                      .copyWith(id: snapshot.id),
              toFirestore: (value, options) => value.toJson(),
            );
    }
  }
}
