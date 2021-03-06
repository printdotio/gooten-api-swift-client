//
// ProductOption.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ProductOption: JSONEncodable {

    public var optionId: String?
    public var valueId: String?
    public var name: String?
    public var value: String?
    public var imageUrl: String?
    public var imageType: String?
    public var rgbaColor: String?
    public var cmValue: String?
    public var sortValue: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["optionId"] = self.optionId
        nillableDictionary["valueId"] = self.valueId
        nillableDictionary["name"] = self.name
        nillableDictionary["value"] = self.value
        nillableDictionary["imageUrl"] = self.imageUrl
        nillableDictionary["imageType"] = self.imageType
        nillableDictionary["rgbaColor"] = self.rgbaColor
        nillableDictionary["cmValue"] = self.cmValue
        nillableDictionary["sortValue"] = self.sortValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
