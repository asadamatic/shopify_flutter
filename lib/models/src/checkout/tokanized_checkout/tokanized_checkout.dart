// ignore_for_file: invalid_annotation_target

import 'package:shopify_flutter/models/src/product/money_v_2/money_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokanized_checkout.freezed.dart';
part 'tokanized_checkout.g.dart';

@freezed
class TokanizedCheckout with _$TokanizedCheckout {
  const TokanizedCheckout._();

  factory TokanizedCheckout({
    @JsonKey(name: 'id') required String paymentId,
    required MoneyV2 amount,
    required bool test,
    required bool ready,
    String? nextActionUrl,
    String? errorMessage,
    @JsonKey(name: 'checkout', fromJson: _checkoutIdFromJson)
    String? checkoutId,
  }) = _TokanizedCheckout;

  factory TokanizedCheckout.fromJson(Map<String, dynamic> json) =>
      _$TokanizedCheckoutFromJson(json);
}

String? _checkoutIdFromJson(Map<String, dynamic> json) {
  return json['id'];
}
