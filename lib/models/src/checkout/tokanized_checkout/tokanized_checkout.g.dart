// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokanized_checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokanizedCheckoutImpl _$$TokanizedCheckoutImplFromJson(
        Map<String, dynamic> json) =>
    _$TokanizedCheckoutImpl(
      paymentId: json['id'] as String,
      amount: MoneyV2.fromJson(json['amount'] as Map<String, dynamic>),
      test: json['test'] as bool,
      ready: json['ready'] as bool,
      nextActionUrl: json['nextActionUrl'] as String?,
      errorMessage: json['errorMessage'] as String?,
      checkoutId: _checkoutIdFromJson(json['checkout'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TokanizedCheckoutImplToJson(
        _$TokanizedCheckoutImpl instance) =>
    <String, dynamic>{
      'id': instance.paymentId,
      'amount': instance.amount,
      'test': instance.test,
      'ready': instance.ready,
      'nextActionUrl': instance.nextActionUrl,
      'errorMessage': instance.errorMessage,
      'checkout': instance.checkoutId,
    };
