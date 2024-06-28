import 'package:shopify_flutter/models/src/product/money_v_2/money_v_2.dart';
import 'package:shopify_flutter/models/src/product/price_v_2/price_v_2.dart';
import 'package:shopify_flutter/models/src/product/selected_option/selected_option.dart';
import 'package:shopify_flutter/models/src/product/shopify_image/shopify_image.dart';
import 'package:shopify_flutter/models/src/product/unit_price_measurement/unit_price_measurement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_variant.freezed.dart';
part 'product_variant.g.dart';

@freezed
class ProductVariant with _$ProductVariant {
  const ProductVariant._();
  factory ProductVariant({
    required MoneyV2 price,
    required String title,
    required double weight,
    required String weightUnit,
    required bool availableForSale,
    required bool requiresShipping,
    required String id,
    required int quantityAvailable,
    String? sku,
    MoneyV2? unitPrice,
    UnitPriceMeasurement? unitPriceMeasurement,
    List<SelectedOption>? selectedOptions,
    MoneyV2? compareAtPrice,
    ShopifyImage? image,
  }) = _ProductVariant;

  factory ProductVariant.fromGraphJson(Map<String, dynamic> json) {
    Map<String, dynamic> nodeJson = json['node'] ?? const {};

    return ProductVariant(
      price: MoneyV2.fromJson(nodeJson['price']),
      title: nodeJson['title'],
      image: nodeJson['image'] != null
          ? ShopifyImage.fromJson(nodeJson['image'])
          : null,
      compareAtPrice: nodeJson['compareAtPrice'] != null
          ? MoneyV2.fromJson(nodeJson['compareAtPrice'])
          : null,
      weight: double.tryParse(nodeJson['weight'].toString()) ?? 0.0,
      weightUnit: nodeJson['weightUnit'],
      availableForSale: nodeJson['availableForSale'],
      requiresShipping: nodeJson['requiresShipping'],
      id: nodeJson['id'],
      quantityAvailable: nodeJson['quantityAvailable'],
      sku: nodeJson['sku'],
      unitPrice: nodeJson['unitPrice'] != null
          ? MoneyV2.fromJson(nodeJson['unitPrice'])
          : null,
      unitPriceMeasurement: nodeJson['unitPriceMeasurement'] != null
          ? UnitPriceMeasurement.fromJson(nodeJson['unitPriceMeasurement'])
          : null,
      selectedOptions: _getOptionList((nodeJson)),
    );
  }

  factory ProductVariant.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantFromJson(json);

  static List<SelectedOption> _getOptionList(Map<String, dynamic> json) {
    List<SelectedOption> optionList = [];
    json['selectedOptions']?.forEach((v) {
      if (v != null) optionList.add(SelectedOption.fromJson(v ?? const {}));
    });
    return optionList;
  }
}
