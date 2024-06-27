import 'package:shopify_flutter/models/src/product/money_v_2/money_v_2.dart';
import 'package:shopify_flutter/models/src/product/price_v_2/price_v_2.dart';
import 'package:shopify_flutter/models/src/product/product.dart';
import 'package:shopify_flutter/models/src/product/selected_option/selected_option.dart';
import 'package:shopify_flutter/models/src/product/shopify_image/shopify_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_variant_checkout.freezed.dart';
part 'product_variant_checkout.g.dart';

@freezed
class ProductVariantCheckout with _$ProductVariantCheckout {
  const ProductVariantCheckout._();

  factory ProductVariantCheckout({
    required MoneyV2 price,
    required String title,
    required bool availableForSale,
    required bool requiresShipping,
    required String id,
    String? sku,
    ShopifyImage? image,
    MoneyV2? compareAtPrice,
    double? weight,
    String? weightUnit,
    @Default(0) int quantityAvailable,
    Product? product,
    @Default([]) List<SelectedOption> selectedOptions,
  }) = _ProductVariantCheckout;

  factory ProductVariantCheckout.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantCheckoutFromJson(json);
}
