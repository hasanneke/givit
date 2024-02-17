// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuyRequest _$BuyRequestFromJson(Map<String, dynamic> json) {
  return _BuyRequest.fromJson(json);
}

/// @nodoc
mixin _$BuyRequest {
  String get id => throw _privateConstructorUsedError;
  Profile get profile => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  RequestStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuyRequestCopyWith<BuyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyRequestCopyWith<$Res> {
  factory $BuyRequestCopyWith(
          BuyRequest value, $Res Function(BuyRequest) then) =
      _$BuyRequestCopyWithImpl<$Res, BuyRequest>;
  @useResult
  $Res call(
      {String id,
      Profile profile,
      Product product,
      String title,
      String message,
      RequestStatus status});

  $ProfileCopyWith<$Res> get profile;
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$BuyRequestCopyWithImpl<$Res, $Val extends BuyRequest>
    implements $BuyRequestCopyWith<$Res> {
  _$BuyRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profile = null,
    Object? product = null,
    Object? title = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BuyRequestImplCopyWith<$Res>
    implements $BuyRequestCopyWith<$Res> {
  factory _$$BuyRequestImplCopyWith(
          _$BuyRequestImpl value, $Res Function(_$BuyRequestImpl) then) =
      __$$BuyRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Profile profile,
      Product product,
      String title,
      String message,
      RequestStatus status});

  @override
  $ProfileCopyWith<$Res> get profile;
  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$BuyRequestImplCopyWithImpl<$Res>
    extends _$BuyRequestCopyWithImpl<$Res, _$BuyRequestImpl>
    implements _$$BuyRequestImplCopyWith<$Res> {
  __$$BuyRequestImplCopyWithImpl(
      _$BuyRequestImpl _value, $Res Function(_$BuyRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profile = null,
    Object? product = null,
    Object? title = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$BuyRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuyRequestImpl implements _BuyRequest {
  _$BuyRequestImpl(
      {this.id = '',
      required this.profile,
      required this.product,
      required this.title,
      required this.message,
      this.status = RequestStatus.waiting});

  factory _$BuyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuyRequestImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final Profile profile;
  @override
  final Product product;
  @override
  final String title;
  @override
  final String message;
  @override
  @JsonKey()
  final RequestStatus status;

  @override
  String toString() {
    return 'BuyRequest(id: $id, profile: $profile, product: $product, title: $title, message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuyRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, profile, product, title, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuyRequestImplCopyWith<_$BuyRequestImpl> get copyWith =>
      __$$BuyRequestImplCopyWithImpl<_$BuyRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuyRequestImplToJson(
      this,
    );
  }
}

abstract class _BuyRequest implements BuyRequest {
  factory _BuyRequest(
      {final String id,
      required final Profile profile,
      required final Product product,
      required final String title,
      required final String message,
      final RequestStatus status}) = _$BuyRequestImpl;

  factory _BuyRequest.fromJson(Map<String, dynamic> json) =
      _$BuyRequestImpl.fromJson;

  @override
  String get id;
  @override
  Profile get profile;
  @override
  Product get product;
  @override
  String get title;
  @override
  String get message;
  @override
  RequestStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$BuyRequestImplCopyWith<_$BuyRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
