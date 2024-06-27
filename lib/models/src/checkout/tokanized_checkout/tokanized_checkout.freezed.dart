// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tokanized_checkout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokanizedCheckout _$TokanizedCheckoutFromJson(Map<String, dynamic> json) {
  return _TokanizedCheckout.fromJson(json);
}

/// @nodoc
mixin _$TokanizedCheckout {
  @JsonKey(name: 'id')
  String get paymentId => throw _privateConstructorUsedError;
  MoneyV2 get amount => throw _privateConstructorUsedError;
  bool get test => throw _privateConstructorUsedError;
  bool get ready => throw _privateConstructorUsedError;
  String? get nextActionUrl => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkout', fromJson: _checkoutIdFromJson)
  String? get checkoutId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokanizedCheckoutCopyWith<TokanizedCheckout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokanizedCheckoutCopyWith<$Res> {
  factory $TokanizedCheckoutCopyWith(
          TokanizedCheckout value, $Res Function(TokanizedCheckout) then) =
      _$TokanizedCheckoutCopyWithImpl<$Res, TokanizedCheckout>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String paymentId,
      MoneyV2 amount,
      bool test,
      bool ready,
      String? nextActionUrl,
      String? errorMessage,
      @JsonKey(name: 'checkout', fromJson: _checkoutIdFromJson)
      String? checkoutId});

  $MoneyV2CopyWith<$Res> get amount;
}

/// @nodoc
class _$TokanizedCheckoutCopyWithImpl<$Res, $Val extends TokanizedCheckout>
    implements $TokanizedCheckoutCopyWith<$Res> {
  _$TokanizedCheckoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? amount = null,
    Object? test = null,
    Object? ready = null,
    Object? nextActionUrl = freezed,
    Object? errorMessage = freezed,
    Object? checkoutId = freezed,
  }) {
    return _then(_value.copyWith(
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as MoneyV2,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as bool,
      ready: null == ready
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      nextActionUrl: freezed == nextActionUrl
          ? _value.nextActionUrl
          : nextActionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutId: freezed == checkoutId
          ? _value.checkoutId
          : checkoutId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyV2CopyWith<$Res> get amount {
    return $MoneyV2CopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokanizedCheckoutImplCopyWith<$Res>
    implements $TokanizedCheckoutCopyWith<$Res> {
  factory _$$TokanizedCheckoutImplCopyWith(_$TokanizedCheckoutImpl value,
          $Res Function(_$TokanizedCheckoutImpl) then) =
      __$$TokanizedCheckoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String paymentId,
      MoneyV2 amount,
      bool test,
      bool ready,
      String? nextActionUrl,
      String? errorMessage,
      @JsonKey(name: 'checkout', fromJson: _checkoutIdFromJson)
      String? checkoutId});

  @override
  $MoneyV2CopyWith<$Res> get amount;
}

/// @nodoc
class __$$TokanizedCheckoutImplCopyWithImpl<$Res>
    extends _$TokanizedCheckoutCopyWithImpl<$Res, _$TokanizedCheckoutImpl>
    implements _$$TokanizedCheckoutImplCopyWith<$Res> {
  __$$TokanizedCheckoutImplCopyWithImpl(_$TokanizedCheckoutImpl _value,
      $Res Function(_$TokanizedCheckoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? amount = null,
    Object? test = null,
    Object? ready = null,
    Object? nextActionUrl = freezed,
    Object? errorMessage = freezed,
    Object? checkoutId = freezed,
  }) {
    return _then(_$TokanizedCheckoutImpl(
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as MoneyV2,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as bool,
      ready: null == ready
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      nextActionUrl: freezed == nextActionUrl
          ? _value.nextActionUrl
          : nextActionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      checkoutId: freezed == checkoutId
          ? _value.checkoutId
          : checkoutId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokanizedCheckoutImpl extends _TokanizedCheckout {
  _$TokanizedCheckoutImpl(
      {@JsonKey(name: 'id') required this.paymentId,
      required this.amount,
      required this.test,
      required this.ready,
      this.nextActionUrl,
      this.errorMessage,
      @JsonKey(name: 'checkout', fromJson: _checkoutIdFromJson)
      this.checkoutId})
      : super._();

  factory _$TokanizedCheckoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokanizedCheckoutImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String paymentId;
  @override
  final MoneyV2 amount;
  @override
  final bool test;
  @override
  final bool ready;
  @override
  final String? nextActionUrl;
  @override
  final String? errorMessage;
  @override
  @JsonKey(name: 'checkout', fromJson: _checkoutIdFromJson)
  final String? checkoutId;

  @override
  String toString() {
    return 'TokanizedCheckout(paymentId: $paymentId, amount: $amount, test: $test, ready: $ready, nextActionUrl: $nextActionUrl, errorMessage: $errorMessage, checkoutId: $checkoutId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokanizedCheckoutImpl &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.ready, ready) || other.ready == ready) &&
            (identical(other.nextActionUrl, nextActionUrl) ||
                other.nextActionUrl == nextActionUrl) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.checkoutId, checkoutId) ||
                other.checkoutId == checkoutId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paymentId, amount, test, ready,
      nextActionUrl, errorMessage, checkoutId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokanizedCheckoutImplCopyWith<_$TokanizedCheckoutImpl> get copyWith =>
      __$$TokanizedCheckoutImplCopyWithImpl<_$TokanizedCheckoutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokanizedCheckoutImplToJson(
      this,
    );
  }
}

abstract class _TokanizedCheckout extends TokanizedCheckout {
  factory _TokanizedCheckout(
      {@JsonKey(name: 'id') required final String paymentId,
      required final MoneyV2 amount,
      required final bool test,
      required final bool ready,
      final String? nextActionUrl,
      final String? errorMessage,
      @JsonKey(name: 'checkout', fromJson: _checkoutIdFromJson)
      final String? checkoutId}) = _$TokanizedCheckoutImpl;
  _TokanizedCheckout._() : super._();

  factory _TokanizedCheckout.fromJson(Map<String, dynamic> json) =
      _$TokanizedCheckoutImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get paymentId;
  @override
  MoneyV2 get amount;
  @override
  bool get test;
  @override
  bool get ready;
  @override
  String? get nextActionUrl;
  @override
  String? get errorMessage;
  @override
  @JsonKey(name: 'checkout', fromJson: _checkoutIdFromJson)
  String? get checkoutId;
  @override
  @JsonKey(ignore: true)
  _$$TokanizedCheckoutImplCopyWith<_$TokanizedCheckoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
