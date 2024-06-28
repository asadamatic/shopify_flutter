/// Mutation to complete a checkout with a tokenized payment
const String completeCheckoutWithTokenV3 = r'''
mutation checkoutCompleteWithTokenizedPaymentV3($checkoutId: ID!, $payment: TokenizedPaymentInputV3!),  {
  checkoutCompleteWithTokenizedPaymentV3(checkoutId: $checkoutId, payment: $payment) {
    checkout {
      id
      completedAt
      createdAt
    }
    checkoutUserErrors {
      code
      field
      message
    }
    payment {
      amount {
        amount
        currencyCode
      }
      checkout {
        id
      }
      test
      id
      nextActionUrl
      ready
      errorMessage
    }
  }
}
''';
