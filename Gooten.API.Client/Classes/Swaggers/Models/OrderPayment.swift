//
// OrderPayment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class OrderPayment: JSONEncodable {

    public var braintreeEncryptedCCNumber: String?
    public var braintreeEncryptedCCExpDate: String?
    public var braintreeEncryptedCCV: String?
    public var braintreePaymentNonce: String?
    /** A code that when passed allows the order to be submitted on credit. */
    public var partnerBillingKey: String?
    public var total: Int?
    public var currencyCode: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["braintreeEncryptedCCNumber"] = self.braintreeEncryptedCCNumber
        nillableDictionary["braintreeEncryptedCCExpDate"] = self.braintreeEncryptedCCExpDate
        nillableDictionary["braintreeEncryptedCCV"] = self.braintreeEncryptedCCV
        nillableDictionary["braintreePaymentNonce"] = self.braintreePaymentNonce
        nillableDictionary["partnerBillingKey"] = self.partnerBillingKey
        nillableDictionary["total"] = self.total
        nillableDictionary["currencyCode"] = self.currencyCode
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
