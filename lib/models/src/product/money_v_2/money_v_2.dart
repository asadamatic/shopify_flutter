// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../json_helper.dart';

part 'money_v_2.freezed.dart';
part 'money_v_2.g.dart';

@freezed
class MoneyV2 with _$MoneyV2 {
  static NumberFormat? priceFormat;

  MoneyV2._();

  factory MoneyV2({
    @JsonKey(fromJson: JsonHelper.amountFromJson) required double amount,
    required String currencyCode,
  }) = _MoneyV2;

  factory MoneyV2.fromJson(Map<String, dynamic> json) =>
      _$MoneyV2FromJson(json);

  String get formattedPrice => JsonHelper.chooseRightOrderOnCurrencySymbol(
        amount,
        currencyCode,
        priceFormat: priceFormat,
      );

  String formattedPriceWithLocale(String? locale) =>
      JsonHelper.chooseRightOrderOnCurrencySymbol(
        amount,
        currencyCode,
        priceFormat: priceFormat,
        locale: (locale != null && locale.isEmpty) ? null : locale,
      );
}
