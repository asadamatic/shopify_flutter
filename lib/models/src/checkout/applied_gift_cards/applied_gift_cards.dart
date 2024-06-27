import 'package:shopify_flutter/models/src/product/money_v_2/money_v_2.dart';
import 'package:shopify_flutter/models/src/product/price_v_2/price_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'applied_gift_cards.freezed.dart';
part 'applied_gift_cards.g.dart';

@freezed
class AppliedGiftCards with _$AppliedGiftCards {
  const AppliedGiftCards._();

  factory AppliedGiftCards(
      {required MoneyV2 amountUsed,
      required MoneyV2 balance,
      required String id}) = _AppliedGiftCards;

  factory AppliedGiftCards.fromJson(Map<String, dynamic> json) =>
      _$AppliedGiftCardsFromJson(json);
}
