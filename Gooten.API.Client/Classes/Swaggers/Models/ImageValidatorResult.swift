//
// ImageValidatorResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ImageValidatorResult: JSONEncodable {

    public var hadError: Bool?
    public var issues: [ValidationFailure]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["hadError"] = self.hadError
        nillableDictionary["issues"] = self.issues?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
