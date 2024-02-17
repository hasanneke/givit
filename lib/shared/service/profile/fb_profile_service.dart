import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:givit/shared/enum/firebase_collections.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/model/profile/profile.dart';
import 'package:givit/shared/service/firebase_service.dart';

class FBProfileService extends FirebaseService<Profile> {
  FBProfileService()
      : super(
            reference: Collection.profiles.collection()
                as CollectionReference<Profile>);
}
