import 'package:shopify_flutter/models/src/order/line_item_order/line_item_order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_items_order.freezed.dart';
part 'line_items_order.g.dart';

@freezed
class LineItemsOrder with _$LineItemsOrder {
  factory LineItemsOrder({required List<LineItemOrder> lineItemOrderList}) =
      _LineItemsOrder;

  factory LineItemsOrder.fromJson(Map<String, dynamic> json) =>
      _$LineItemsOrderFromJson(json);

  factory LineItemsOrder.fromGraphJson(Map<String, dynamic> json) =>
      LineItemsOrder(lineItemOrderList: _getLineItemOrderList(json));

  static _getLineItemOrderList(Map<String, dynamic> json) {
    List<LineItemOrder> lineItemListOrder = [];
    if (json.containsKey('edges')) {
      json['edges'].forEach((lineItemOrder) =>
          lineItemListOrder.add(LineItemOrder.fromGraphJson(lineItemOrder)));
    }
    return lineItemListOrder;
  }
}
