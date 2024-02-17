// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:givit/features/profile/service/profile_service.dart';
import 'package:givit/shared/model/buy_request/buy_request.dart';
import 'package:givit/shared/model/product/product.dart';

import 'package:givit/shared/model/profile/profile.dart';
import 'package:givit/shared/service/firebase_service.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileService profileService;
  ProfileBloc(
    this.profileService,
  ) : super(const _Initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(started: (userId) async {
        final res = await profileService.getUser(userId);
        emit(ProfileState.loaded(
          profile: res!,
          buyRequests: [],
          products: [],
          savedProducts: [],
        ));
      });
    });
  }
}
