import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:givit/shared/model/product/product.dart';

import 'package:givit/shared/model/profile/profile.dart';

part 'buy_request.freezed.dart';
part 'buy_request.g.dart';

@freezed
class BuyRequest with _$BuyRequest {
  factory BuyRequest({
    @Default('') String id,
    required Profile profile,
    required Product product,
    required String title,
    required String message,
    @Default(RequestStatus.waiting) RequestStatus status,
  }) = _BuyRequest;

  factory BuyRequest.fromJson(Map<String, dynamic> json) =>
      _$BuyRequestFromJson(json);
}

enum RequestStatus {
  waiting,
  rejected,
  accepted;
}
