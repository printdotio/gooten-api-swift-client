//
// Result.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Result: JSONEncodable {

    public var isValid: Bool?
    public var reason: String?
    public var score: Int?
    public var proposedAddress: Address?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["isValid"] = self.isValid
        nillableDictionary["reason"] = self.reason
        nillableDictionary["score"] = self.score
        nillableDictionary["proposedAddress"] = self.proposedAddress?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
