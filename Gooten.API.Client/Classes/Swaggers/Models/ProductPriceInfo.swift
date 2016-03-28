//
// ProductPriceInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ProductPriceInfo: JSONEncodable {

    public var price: Int?
    public var currencyCode: String?
    public var formattedPrice: String?
    public var currencyFormat: String?
    public var currencyDigits: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["price"] = self.price
        nillableDictionary["currencyCode"] = self.currencyCode
        nillableDictionary["formattedPrice"] = self.formattedPrice
        nillableDictionary["currencyFormat"] = self.currencyFormat
        nillableDictionary["currencyDigits"] = self.currencyDigits
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
