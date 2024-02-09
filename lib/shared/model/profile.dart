import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:givit/shared/model/address.dart';
import 'package:givit/shared/model/product.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  factory Profile({
    required String name,
    required String surname,
    required String email,
    required String phone,
    Address? address,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
