// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirebaseService<T> {
  final CollectionReference<T> reference;
  FirebaseService({
    required this.reference,
  });

  Future<List<T>> fetch({List<FirebaseFilter> filters = const []}) async {
    if (filters.isNotEmpty) {
      var query = reference;
      for (var filter in filters) {}
    }
    return await reference
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  Future<T?> create(T data) async {
    final res = await reference.add(data).then((value) => value.get());
    return res.data();
  }

  Future<void> update(String id, T data) async {
    await reference.doc(id).set(data);
  }

  Future<void> delete(String id) async {
    await reference.doc(id).delete();
  }

  Future<T?> get(String id) async {
    return await reference.doc(id).get().then((value) => value.data());
  }
}

class FirebaseFilter {
  final String field;
  final FireFilter filter;
  FirebaseFilter({
    required this.field,
    required this.filter,
  });
}

enum FireFilter {
  isEqualTo,
  isNotEqualTo,
  isLessThan,
  isLessThanOrEqualTo,
  isGreaterThan,
  isGreaterThanOrEqualTo,
  arrayContains,
  arrayContainsAny,
  whereIn,
  whereNotIn,
  isNull;
}
