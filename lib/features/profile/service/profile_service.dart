// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:givit/shared/model/buy_request/buy_request.dart';
import 'package:givit/shared/model/mark/product_mark.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/model/profile/profile.dart';
import 'package:givit/shared/service/firebase_service.dart';
import 'package:givit/shared/service/mark/fb_mark_service.dart';
import 'package:givit/shared/service/product/fb_product_service.dart';
import 'package:givit/shared/service/profile/fb_profile_service.dart';
import 'package:givit/shared/service/request/fb_buy_request_service.dart';

abstract class ProfileService {
  Future<Profile?> getUser(String id);
  Future<List<Product>> fetchUsersProducts(String userId);
  Future<List<BuyRequest>> fetchUsersRequests(String userId);
  Future<List<ProductMark>> fetchMarkedProducts(String userId);
}

class FBProfilePageService extends ProfileService {
  late FirebaseService<Profile> profileService;
  late FirebaseService<Product> productService;
  late FirebaseService<BuyRequest> requetsService;
  late FirebaseService<ProductMark> markedProductService;
  FBProfilePageService() {
    profileService = FBProfileService();
    productService = FBProductService();
    requetsService = FBRequestService();
    markedProductService = FBProductMarkService();
  }

  @override
  Future<List<ProductMark>> fetchMarkedProducts(String userId) async {
    return markedProductService.fetch(
      filters: [
        FirebaseFilter(
          field: 'user_id',
          filter: FireFilter.isEqualTo,
          value: userId,
        )
      ],
    );
  }

  @override
  Future<List<Product>> fetchUsersProducts(String userId) async {
    return await productService.fetch(
      filters: [
        FirebaseFilter(
          field: 'profile.id',
          filter: FireFilter.isEqualTo,
          value: userId,
        )
      ],
    );
  }

  @override
  Future<List<BuyRequest>> fetchUsersRequests(String userId) async {
    return await requetsService.fetch(
      filters: [
        FirebaseFilter(
          field: 'profile.id',
          filter: FireFilter.isEqualTo,
          value: userId,
        )
      ],
    );
  }

  @override
  Future<Profile?> getUser(String id) async {
    return await profileService.get(id);
  }
}
