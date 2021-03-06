//
// Product.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Product: JSONEncodable {

    /** The product type id. Represents a type/class of products. Can later be passed into the productvariant service to get available product variations. */
    public var id: Int?
    /** An id that syncs between printio&#39;s staging and live environments. */
    public var uId: String?
    public var name: String?
    public var shortDescription: String?
    /** Whether or not the item returned is a Product, or ProductVariant. Items with a Sku will not have other product variants */
    public var hasAvailableProductVariants: Bool?
    /** Whether or not the product has variants with templates. */
    public var hasProductTemplates: Bool?
    /** A value to sort featured items by. Note that this is null if IsFeatured=false */
    public var featuredIndex: Int?
    public var maxZoom: Int?
    public var retailPrice: ProductPriceInfo?
    /** Content describing the product. */
    public var info: [ProductInfo]?
    /** Product images. Note that this contains large and small images for web, mobile, etc */
    public var productImage: [ProductImage]?
    public var priceInfo: ProductPriceInfo?
    public var partnerPriceInfo: ProductPriceInfo?
    public var categories: [Category]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["uId"] = self.uId
        nillableDictionary["name"] = self.name
        nillableDictionary["shortDescription"] = self.shortDescription
        nillableDictionary["hasAvailableProductVariants"] = self.hasAvailableProductVariants
        nillableDictionary["hasProductTemplates"] = self.hasProductTemplates
        nillableDictionary["featuredIndex"] = self.featuredIndex
        nillableDictionary["maxZoom"] = self.maxZoom
        nillableDictionary["retailPrice"] = self.retailPrice?.encodeToJSON()
        nillableDictionary["info"] = self.info?.encodeToJSON()
        nillableDictionary["productImage"] = self.productImage?.encodeToJSON()
        nillableDictionary["priceInfo"] = self.priceInfo?.encodeToJSON()
        nillableDictionary["partnerPriceInfo"] = self.partnerPriceInfo?.encodeToJSON()
        nillableDictionary["categories"] = self.categories?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
