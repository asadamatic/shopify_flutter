// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money_v_2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoneyV2 _$MoneyV2FromJson(Map<String, dynamic> json) {
  return _MoneyV2.fromJson(json);
}

/// @nodoc
mixin _$MoneyV2 {
  @JsonKey(fromJson: JsonHelper.amountFromJson)
  double get amount => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoneyV2CopyWith<MoneyV2> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyV2CopyWith<$Res> {
  factory $MoneyV2CopyWith(MoneyV2 value, $Res Function(MoneyV2) then) =
      _$MoneyV2CopyWithImpl<$Res, MoneyV2>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: JsonHelper.amountFromJson) double amount,
      String currencyCode});
}

/// @nodoc
class _$MoneyV2CopyWithImpl<$Res, $Val extends MoneyV2>
    implements $MoneyV2CopyWith<$Res> {
  _$MoneyV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currencyCode = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoneyV2ImplCopyWith<$Res> implements $MoneyV2CopyWith<$Res> {
  factory _$$MoneyV2ImplCopyWith(
          _$MoneyV2Impl value, $Res Function(_$MoneyV2Impl) then) =
      __$$MoneyV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: JsonHelper.amountFromJson) double amount,
      String currencyCode});
}

/// @nodoc
class __$$MoneyV2ImplCopyWithImpl<$Res>
    extends _$MoneyV2CopyWithImpl<$Res, _$MoneyV2Impl>
    implements _$$MoneyV2ImplCopyWith<$Res> {
  __$$MoneyV2ImplCopyWithImpl(
      _$MoneyV2Impl _value, $Res Function(_$MoneyV2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currencyCode = null,
  }) {
    return _then(_$MoneyV2Impl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoneyV2Impl extends _MoneyV2 {
  _$MoneyV2Impl(
      {@JsonKey(fromJson: JsonHelper.amountFromJson) required this.amount,
      required this.currencyCode})
      : super._();

  factory _$MoneyV2Impl.fromJson(Map<String, dynamic> json) =>
      _$$MoneyV2ImplFromJson(json);

  @override
  @JsonKey(fromJson: JsonHelper.amountFromJson)
  final double amount;
  @override
  final String currencyCode;

  @override
  String toString() {
    return 'MoneyV2(amount: $amount, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoneyV2Impl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currencyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoneyV2ImplCopyWith<_$MoneyV2Impl> get copyWith =>
      __$$MoneyV2ImplCopyWithImpl<_$MoneyV2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoneyV2ImplToJson(
      this,
    );
  }
}

abstract class _MoneyV2 extends MoneyV2 {
  factory _MoneyV2(
      {@JsonKey(fromJson: JsonHelper.amountFromJson)
      required final double amount,
      required final String currencyCode}) = _$MoneyV2Impl;
  _MoneyV2._() : super._();

  factory _MoneyV2.fromJson(Map<String, dynamic> json) = _$MoneyV2Impl.fromJson;

  @override
  @JsonKey(fromJson: JsonHelper.amountFromJson)
  double get amount;
  @override
  String get currencyCode;
  @override
  @JsonKey(ignore: true)
  _$$MoneyV2ImplCopyWith<_$MoneyV2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
