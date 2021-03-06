//
// ProductPreviewImageSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ProductPreviewImageSpec: JSONEncodable {

    public var url: String?
    public var x1: Int?
    public var x2: Int?
    public var y1: Int?
    public var y2: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["url"] = self.url
        nillableDictionary["x1"] = self.x1
        nillableDictionary["x2"] = self.x2
        nillableDictionary["y1"] = self.y1
        nillableDictionary["y2"] = self.y2
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
