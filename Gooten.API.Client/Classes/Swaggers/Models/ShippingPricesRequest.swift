//
// ShippingPricesRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ShippingPricesRequest: JSONEncodable {

    public var shipToPostalCode: String?
    public var shipToCountry: String?
    public var shipToState: String?
    public var currencyCode: String?
    public var languageCode: String?
    public var items: [SkuQuantityPair]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["shipToPostalCode"] = self.shipToPostalCode
        nillableDictionary["shipToCountry"] = self.shipToCountry
        nillableDictionary["shipToState"] = self.shipToState
        nillableDictionary["currencyCode"] = self.currencyCode
        nillableDictionary["languageCode"] = self.languageCode
        nillableDictionary["items"] = self.items?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
