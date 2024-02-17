import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:givit/shared/model/address/address.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const Profile._();
  factory Profile({
    @Default('') String id,
    required String name,
    required String surname,
    required String email,
    required String phone,
    String? avatarUrl,
    @Default(0) double point,
    Address? address,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  static Profile get dummy => Profile(
        name: 'Hasan',
        surname: 'Eke',
        email: 'hasaneke1000@gmail.com',
        phone: '0551 123 54 71',
        address: Address(
          address: 'Tufan sokak no:37',
          city: 'Ankara',
          state: 'Yenimahalle',
        ),
      );
  String get fullName => '$name $surname';
}
