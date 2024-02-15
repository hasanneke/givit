import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:givit/shared/model/product/product.dart';

import 'package:givit/shared/model/profile/profile.dart';

part 'buy_request.freezed.dart';
part 'buy_request.g.dart';

@freezed
class BuyRequest with _$BuyRequest {
  factory BuyRequest({
    required Profile profile,
    required Product product,
    required String title,
    required String message,
    @Default(RequestStatus.waiting) RequestStatus status,
  }) = _BuyRequest;

  factory BuyRequest.fromJson(Map<String, dynamic> json) =>
      _$BuyRequestFromJson(json);
  static List<BuyRequest> get dummyList => [
        BuyRequest(
          profile: Profile.dummy,
          product: Product.dummy.first,
          title: 'Talep Başlığı',
          message: 'Talep Açıklaması',
        ),
        BuyRequest(
            profile: Profile.dummy,
            product: Product.dummy.first,
            title: 'Talep Başlığı',
            message: 'Talep Açıklaması',
            status: RequestStatus.accepted),
        BuyRequest(
          profile: Profile.dummy,
          product: Product.dummy.first,
          title: 'Talep Başlığı',
          message: 'Talep Açıklaması',
          status: RequestStatus.rejected,
        )
      ];
  static BuyRequest get dummy => BuyRequest(
        profile: Profile.dummy,
        product: Product.dummy.first,
        title: 'Talep Başlığı',
        message: 'Talep Açıklaması',
        status: RequestStatus.accepted,
      );
}

enum RequestStatus {
  waiting,
  rejected,
  accepted;
}
