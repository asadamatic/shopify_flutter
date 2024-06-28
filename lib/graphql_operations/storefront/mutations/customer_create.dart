/// Mutation to create a customer
const String customerCreateMutation = r'''
mutation MyMutation($firstName: String, $lastName: String, $email: String!, $password: String!, $acceptsMarketing: Boolean, $phone: String) {
  customerCreate(input: {firstName: $firstName, lastName: $lastName, email: $email, password: $password, acceptsMarketing: $acceptsMarketing, phone: $phone}) {
    customer{
      acceptsMarketing
    addresses(first: 10) {
      edges {
        node {
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
      }
    }
    createdAt
    defaultAddress {
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
      zip
      provinceCode
    }
    tags
    displayName
    email
    firstName
    id
    lastName
    phone
    lastIncompleteCheckout {
        completedAt
        createdAt
        currencyCode
        email
        id
        webUrl
        totalPrice {
          amount
          currencyCode
        }
        lineItemsSubtotalPrice {
          amount
          currencyCode
        }
        lineItems(first: 250) {
          edges {
            node {
              id
              quantity
              title
              discountAllocations {
               allocatedAmount {
                 amount
                currencyCode
               }
              }
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
                quantityAvailable
                sku
                requiresShipping
                id
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
      }
  }
  customerUserErrors {
      code
      field
      message
    }
  }
}
''';
