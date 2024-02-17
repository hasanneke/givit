// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:givit/shared/model/profile/profile.dart';
import 'package:givit/shared/service/firebase_service.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  FirebaseService<Profile> profileService;
  ProfileBloc(
    this.profileService,
  ) : super(const _Initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(started: (userId) async {
        final res = await profileService.get(userId);
        emit(ProfileState.loaded(profile: res!));
      });
    });
  }
}
