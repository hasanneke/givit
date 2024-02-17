part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loaded({
    required Profile? profile,
    required List<Product> products,
    required List<ProductMark> savedProducts,
    required List<BuyRequest> buyRequests,
  }) = _Loaded;
}
