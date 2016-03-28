//
// Item.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Item: JSONEncodable {

    public var quantity: Int?
    public var sku: String?
    public var status: String?
    public var product: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["quantity"] = self.quantity
        nillableDictionary["sku"] = self.sku
        nillableDictionary["status"] = self.status
        nillableDictionary["product"] = self.product
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
