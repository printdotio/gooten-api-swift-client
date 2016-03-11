//
// ProductPreviewResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ProductPreviewResponse: JSONEncodable {

    public var url: String?
    public var hadError: Bool?
    public var errorMessage: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["url"] = self.url
        nillableDictionary["hadError"] = self.hadError
        nillableDictionary["errorMessage"] = self.errorMessage
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
