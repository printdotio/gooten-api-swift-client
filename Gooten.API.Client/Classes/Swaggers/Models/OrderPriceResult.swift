//
// OrderPriceResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class OrderPriceResult: JSONEncodable {

    public var items: PriceInfo?
    public var shipping: PriceInfo?
    public var tax: PriceInfo?
    public var couponCode: PriceInfo?
    public var couponType: String?
    public var couponUsed: String?
    public var hadCouponApply: Bool?
    public var dollarsOff: Int?
    public var percentOff: Int?
    public var hadError: Bool?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["items"] = self.items?.encodeToJSON()
        nillableDictionary["shipping"] = self.shipping?.encodeToJSON()
        nillableDictionary["tax"] = self.tax?.encodeToJSON()
        nillableDictionary["couponCode"] = self.couponCode?.encodeToJSON()
        nillableDictionary["couponType"] = self.couponType
        nillableDictionary["couponUsed"] = self.couponUsed
        nillableDictionary["hadCouponApply"] = self.hadCouponApply
        nillableDictionary["dollarsOff"] = self.dollarsOff
        nillableDictionary["percentOff"] = self.percentOff
        nillableDictionary["hadError"] = self.hadError
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
