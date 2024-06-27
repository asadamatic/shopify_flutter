import 'package:shopify_flutter/models/src/order/successful_fulfillment/successful_fullfilment.dart';
import 'package:shopify_flutter/models/src/product/money_v_2/money_v_2.dart';
import 'package:shopify_flutter/models/src/product/price_v_2/price_v_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'line_items_order/line_items_order.dart';
import 'shipping_address/shipping_address.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const Order._();

  factory Order({
    required String id,
    required String email,
    required String currencyCode,
    required String customerUrl,
    required LineItemsOrder lineItems,
    required String name,
    required int orderNumber,
    required String processedAt,
    required ShippingAddress? shippingAddress,
    required ShippingAddress? billingAddress,
    required String statusUrl,
    required MoneyV2 subtotalPrice,
    required MoneyV2 totalPrice,
    required MoneyV2 totalShippingPrice,
    required MoneyV2 totalTax,
    required String financialStatus,
    required String fulfillmentStatus,
    MoneyV2? totalRefunded,
    String? phone,
    String? cursor,
    List<SuccessfulFullfilment>? successfulFulfillments,
  }) = _Order;

  factory Order.fromGraphJson(Map<String, dynamic> json) => Order(
        id: json['node']['id'],
        email: json['node']['email'] ?? '',
        currencyCode: json['node']['currencyCode'],
        customerUrl: json['node']['customerUrl'],
        lineItems: LineItemsOrder.fromGraphJson(json['node']['lineItems']),
        name: json['node']['name'] ?? '',
        orderNumber: json['node']['orderNumber'] ?? 0,
        phone: json['node']['phone'],
        processedAt: json['node']['processedAt'],
        financialStatus: json['node']['financialStatus'],
        fulfillmentStatus: json['node']['fulfillmentStatus'],
        shippingAddress: json['node']['shippingAddress'] == null
            ? null
            : ShippingAddress.fromJson(json['node']['shippingAddress']),
        billingAddress: json['node']['billingAddress'] == null
            ? null
            : ShippingAddress.fromJson(json['node']['billingAddress']),
        statusUrl: json['node']['statusUrl'],
        subtotalPrice: MoneyV2.fromJson(json['node']['subtotalPriceV2']),
        totalPrice: MoneyV2.fromJson(json['node']['totalPriceV2']),
        totalRefunded: MoneyV2.fromJson(json['node']['totalRefundedV2']),
        totalShippingPrice:
            MoneyV2.fromJson(json['node']['totalShippingPriceV2']),
        totalTax: MoneyV2.fromJson(json['node']['totalTaxV2']),
        cursor: json['cursor'],
        successfulFulfillments: _getSuccessfulFulfilments(
          json['node']['successfulFulfillments'] ?? [],
        ),
      );

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  static _getSuccessfulFulfilments(List<dynamic> fulfilments) {
    List<SuccessfulFullfilment> list = [];
    for (var f in fulfilments) {
      list.add(SuccessfulFullfilment.fromGraphJson(f));
    }
    return list;
  }
}
