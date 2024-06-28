import 'package:shopify_flutter/models/src/checkout/product_variant_checkout/product_variant_checkout.dart';
import 'package:shopify_flutter/models/src/order/discount_allocations/discount_allocations.dart';
import 'package:shopify_flutter/models/src/product/money_v_2/money_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_item_order.freezed.dart';
part 'line_item_order.g.dart';

@freezed
class LineItemOrder with _$LineItemOrder {
  const LineItemOrder._();

  factory LineItemOrder({
    required int currentQuantity,
    required MoneyV2 discountedTotalPrice,
    required MoneyV2 originalTotalPrice,
    required int quantity,
    required String title,
    @Default([]) List<DiscountAllocations> discountAllocations,
    @Default(null) ProductVariantCheckout? variant,
  }) = _LineItemOrder;

  String? get productId => variant?.product?.id;

  factory LineItemOrder.fromJson(Map<String, dynamic> json) =>
      _$LineItemOrderFromJson(json);

  factory LineItemOrder.fromGraphJson(Map<String, dynamic> json) =>
      LineItemOrder(
        currentQuantity: (json['node'] ?? const {})['currentQuantity'],
        discountAllocations: _getDiscountAllocationsList(json),
        discountedTotalPrice: MoneyV2.fromJson(
            (json['node'] ?? const {})['discountedTotalPrice']),
        originalTotalPrice:
            MoneyV2.fromJson((json['node'] ?? const {})['originalTotalPrice']),
        quantity: (json['node'] ?? const {})['quantity'],
        title: (json['node'] ?? const {})['title'],
        variant: json['node']['variant'] == null
            ? null
            : ProductVariantCheckout.fromJson(json['node']['variant']),
        // variant: ProductVariantCheckout.fromJson(
        //     (json['node'] ?? const {})['variant'] ?? const {})
      );

  static _getDiscountAllocationsList(Map<String, dynamic> json) {
    List<DiscountAllocations> discountList = [];
    (json['node'] ?? const {})['discountAllocations']?.forEach(
        (discount) => discountList.add(DiscountAllocations.fromJson(discount)));
    return discountList;
  }
}
