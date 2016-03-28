//
// SubmittedOrderList.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class SubmittedOrderList: JSONEncodable {

    public var orders: [SearchSubmittedOrder]?
    public var totalPages: Int?
    public var page: Int?
    public var hadError: Bool?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["orders"] = self.orders?.encodeToJSON()
        nillableDictionary["totalPages"] = self.totalPages
        nillableDictionary["page"] = self.page
        nillableDictionary["hadError"] = self.hadError
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
