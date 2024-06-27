// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applied_gift_cards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppliedGiftCardsImpl _$$AppliedGiftCardsImplFromJson(
        Map<String, dynamic> json) =>
    _$AppliedGiftCardsImpl(
      amountUsed: MoneyV2.fromJson(json['amountUsed'] as Map<String, dynamic>),
      balance: MoneyV2.fromJson(json['balance'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$AppliedGiftCardsImplToJson(
        _$AppliedGiftCardsImpl instance) =>
    <String, dynamic>{
      'amountUsed': instance.amountUsed,
      'balance': instance.balance,
      'id': instance.id,
    };
