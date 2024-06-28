import 'package:shopify_flutter/models/src/product/money_v_2/money_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_rates.freezed.dart';
part 'shipping_rates.g.dart';

@freezed
class ShippingRates with _$ShippingRates {
  const ShippingRates._();
  factory ShippingRates(
      {required String handle,
      required String title,
      required MoneyV2 price}) = _ShippingRates;

  factory ShippingRates.fromJson(Map<String, dynamic> json) =>
      _$ShippingRatesFromJson(json);
}
