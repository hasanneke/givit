import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:givit/shared/enum/firebase_collections.dart';
import 'package:givit/shared/model/buy_request/buy_request.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/model/profile/profile.dart';
import 'package:givit/shared/service/firebase_service.dart';

class FBRequestService extends FirebaseService<BuyRequest> {
  FBRequestService()
      : super(
            reference: Collection.requests.collection()
                as CollectionReference<BuyRequest>);
}
