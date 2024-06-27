// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_v_2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoneyV2Impl _$$MoneyV2ImplFromJson(Map<String, dynamic> json) =>
    _$MoneyV2Impl(
      amount: JsonHelper.amountFromJson(json['amount']),
      currencyCode: json['currencyCode'] as String,
    );

Map<String, dynamic> _$$MoneyV2ImplToJson(_$MoneyV2Impl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
    };
