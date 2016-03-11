//
// ProductBuildInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ProductBuildInfo: JSONEncodable {

    public var id: String?
    public var description: String?
    public var _type: String?
    public var zIndex: Int?
    public var x1: Int?
    public var x2: Int?
    public var y1: Int?
    public var y2: Int?
    public var color: String?
    public var backgroundImageUrl: String?
    public var overlayImageUrl: String?
    public var fontName: String?
    public var fontSize: String?
    public var fontHAlignment: String?
    public var fontVAlighment: String?
    public var defaultText: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["description"] = self.description
        nillableDictionary["_type"] = self._type
        nillableDictionary["zIndex"] = self.zIndex
        nillableDictionary["x1"] = self.x1
        nillableDictionary["x2"] = self.x2
        nillableDictionary["y1"] = self.y1
        nillableDictionary["y2"] = self.y2
        nillableDictionary["color"] = self.color
        nillableDictionary["backgroundImageUrl"] = self.backgroundImageUrl
        nillableDictionary["overlayImageUrl"] = self.overlayImageUrl
        nillableDictionary["fontName"] = self.fontName
        nillableDictionary["fontSize"] = self.fontSize
        nillableDictionary["fontHAlignment"] = self.fontHAlignment
        nillableDictionary["fontVAlighment"] = self.fontVAlighment
        nillableDictionary["defaultText"] = self.defaultText
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
