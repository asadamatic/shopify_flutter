/// Mutation to add line items to a checkout
String addLineItemsToCheckoutMutation = r'''
mutation checkoutLineItemsAdd($lineItems: [CheckoutLineItemInput!]!, $checkoutId: ID!) {
  checkoutLineItemsAdd(lineItems: $lineItems, checkoutId: $checkoutId) {
    checkout {
      id
      email
      ready
      appliedGiftCards {
        amountUsed {
          amount
          currencyCode
        }
        balance {
          amount
          currencyCode
        }
        id
      }
      requiresShipping
      shippingLine {
        handle
        price {
          amount
          currencyCode
        }
        title
      }
      shippingAddress {
        address1
        address2
        city
        company
        country
        countryCodeV2
        firstName
        formattedArea
        id
        lastName
        latitude
        longitude
        name
        phone
        province
        provinceCode
        zip
      }
      completedAt
      createdAt
      currencyCode
      lineItems(first: 10) {
        edges {
          node {
            id
            quantity
            title
            customAttributes {
                key
                value
            }
             discountAllocations {
              allocatedAmount {
                amount
                currencyCode
              }
            }
            variant {
              id
              price {
                amount
                currencyCode
              }
              title
              image {
                altText
                originalSrc
                id
              }
              compareAtPrice {
                amount
                currencyCode
              }
              weight
              weightUnit
              availableForSale
              quantityAvailable
              sku
              requiresShipping
              product {
                options(first: 5) {
                    id
                    name
                    values
                    } 
                variants(first: 250) {
                  edges {
                    node {
                      id
                      title
                      image {
                        altText
                        id
                        originalSrc
                      }
                      price {
                        amount
                        currencyCode
                      }
                      compareAtPrice {
                        amount
                        currencyCode
                      }
                      weight
                      weightUnit
                      availableForSale
                      sku
                      requiresShipping
                      quantityAvailable
                      selectedOptions {
                        name
                        value
                      }
                    }
                  }
                  pageInfo {
                    hasNextPage
                  }
                }
                availableForSale
                collections(first: 5) {
                  edges {
                    node {
                      description
                      descriptionHtml
                      id
                      handle
                      updatedAt
                      title
                    }
                  }
                }
                createdAt
                description
                descriptionHtml
                handle
                id
                onlineStoreUrl
                productType
                publishedAt
                tags
                title
                updatedAt
                vendor
                images(first: 5) {
                  edges {
                    node {
                      altText
                      id
                      originalSrc
                    }
                  }
                }
                media(first: 250) {
                  edges {
                    node {
                      alt
                      id
                      mediaContentType
                      previewImage {
                        altText
                        id
                        originalSrc
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      note
      webUrl
      updatedAt
      totalTax {
        amount
        currencyCode
      }
      totalPrice {
        amount
        currencyCode
      }
      taxesIncluded
      taxExempt
      subtotalPrice {
        amount
        currencyCode
      }
      orderStatusUrl
      order {
        id
      }
    }
  }
}
''';
