// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:givit/features/profile/service/profile_service.dart';
import 'package:givit/shared/model/buy_request/buy_request.dart';
import 'package:givit/shared/model/mark/product_mark.dart';
import 'package:givit/shared/model/product/product.dart';

import 'package:givit/shared/model/profile/profile.dart';
import 'package:givit/shared/service/firebase_service.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileService profileService;
  final String userId;
  ProfileBloc(
    this.profileService,
    this.userId,
  ) : super(const _Initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(started: (userId) async {
        final profile = await profileService.getUser(userId);
        final savedProducts = await profileService.fetchMarkedProducts(userId);
        final products = await profileService.fetchUsersProducts(userId);
        final buyRequests = await profileService.fetchUsersRequests(userId);
        emit(
          ProfileState.loaded(
            profile: profile,
            products: products,
            savedProducts: savedProducts,
            buyRequests: buyRequests,
          ),
        );
      });
    });
  }
}
