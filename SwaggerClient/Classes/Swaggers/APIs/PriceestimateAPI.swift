//
// PriceestimateAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PriceestimateAPI: APIBase {
    /**
     
     Get an order price
     
     - parameter order: (body) Order to potentially be submitted
     - parameter version: (path) Version of the api being used
     - parameter source: (path) Description of the source-- ios, android, api
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func pOSTPriceestimate(order order: Order, version: Int, source: String, completion: ((data: OrderPriceResult?, error: ErrorType?) -> Void)) {
        pOSTPriceestimateWithRequestBuilder(order: order, version: version, source: source).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get an order price
     
     - POST /priceestimate/v/{version}/source/{source}/
     - Get the price of an order, including discounts from a coupon.
     - examples: [{contentType=application/json, example={
  "CouponCode" : "",
  "HadCouponApply" : true,
  "PercentOff" : 123456789,
  "CouponType" : "aeiou",
  "DollarsOff" : 123456789,
  "Items" : {
    "CurrencyCode" : "aeiou",
    "Price" : 123456789,
    "CurrencyFormat" : "aeiou",
    "FormattedPrice" : "aeiou",
    "CurrencyDigits" : 123456789
  },
  "Tax" : "",
  "HadError" : true,
  "Shipping" : "",
  "CouponUsed" : "aeiou"
}}]
     
     - parameter order: (body) Order to potentially be submitted
     - parameter version: (path) Version of the api being used
     - parameter source: (path) Description of the source-- ios, android, api

     - returns: RequestBuilder<OrderPriceResult> 
     */
    public class func pOSTPriceestimateWithRequestBuilder(order order: Order, version: Int, source: String) -> RequestBuilder<OrderPriceResult> {
        var path = "/priceestimate/v/{version}/source/{source}/"
        path = path.stringByReplacingOccurrencesOfString("{version}", withString: "\(version)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{source}", withString: "\(source)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        
        let parameters = order.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<OrderPriceResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}
