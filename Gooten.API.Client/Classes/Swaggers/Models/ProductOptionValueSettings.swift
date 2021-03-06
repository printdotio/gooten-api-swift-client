//
// ProductOptionValueSettings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ProductOptionValueSettings: JSONEncodable {

    public var iconUrl: String?
    public var iconType: String?
    public var colorRgba: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["iconUrl"] = self.iconUrl
        nillableDictionary["iconType"] = self.iconType
        nillableDictionary["colorRgba"] = self.colorRgba
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
