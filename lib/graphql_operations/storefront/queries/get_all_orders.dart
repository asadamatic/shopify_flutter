/// Query to get all orders
const String getAllOrdersQuery = r'''
query getOrders($sortKey : OrderSortKeys, $accessToken : String!, $reverse: Boolean){
customer(customerAccessToken: $accessToken) {
    orders(first: 250, sortKey: $sortKey, reverse: $reverse) {
      edges {
        node {
          id
          email
          currencyCode
          customerUrl
          financialStatus
          fulfillmentStatus
          lineItems(first: 250) {
            edges {
              node {
                currentQuantity
                discountAllocations {
                  allocatedAmount {
                    amount
                    currencyCode
                  }
                }
                discountedTotalPrice {
                  amount
                  currencyCode
                }
                originalTotalPrice {
                  amount
                  currencyCode
                }
                quantity
                title
                variant {
                  price {
                    amount
                    currencyCode
                  }
                  title
                  image {
                    altText
                    id
                    originalSrc
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
                  id
                  product{
                    availableForSale
                    createdAt
                    handle
                    id
                    onlineStoreUrl
                    productType
                    publishedAt
                    title
                    updatedAt
                    vendor
                  }
                }
              }
            }
          }
          successfulFulfillments(first: 50) {
            trackingCompany
            trackingInfo {
              number
              url
            }
          }
          name
          orderNumber
          phone
          processedAt
          shippingAddress {
            address1
            address2
            city
            company
            country
            countryCodeV2
            firstName
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
          billingAddress {
            address1
            address2
            city
            company
            country
            countryCodeV2
            firstName
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
          statusUrl
          subtotalPrice {
            amount
            currencyCode
          }
          totalPrice {
            amount
            currencyCode
          }
          totalRefunded {
            amount
            currencyCode
          }
          totalShippingPrice {
            amount
            currencyCode
          }
          totalTax {
            amount
            currencyCode
          }
        }
        cursor
      }
    }
    id
  }
}
''';
