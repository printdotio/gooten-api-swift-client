//
// Preconfiguration.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Preconfiguration: JSONEncodable {

    /** Required only for multi-image items. The ID of the space where an image is to be placed. One can attain the SpaceId via inspecting the template data. */
    public var spaceId: String?
    /** The url of the image to be placed in the referenced layer. */
    public var url: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["spaceId"] = self.spaceId
        nillableDictionary["url"] = self.url
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
