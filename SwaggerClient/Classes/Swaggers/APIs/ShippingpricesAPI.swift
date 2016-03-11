//
// ShippingpricesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ShippingpricesAPI: APIBase {
    /**
     
     Get a list of shipping options and prices for items
     
     - parameter shippingPricesRequest: (body) DTO with required information
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func pOSTShippingprices(shippingPricesRequest shippingPricesRequest: ShippingPricesRequest, completion: ((data: ShippingPricesResult?, error: ErrorType?) -> Void)) {
        pOSTShippingpricesWithRequestBuilder(shippingPricesRequest: shippingPricesRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a list of shipping options and prices for items
     
     - POST /shippingprices/
     - Get a list of shipping options and prices for items.
     - examples: [{contentType=application/json, example={
  "Result" : [ {
    "SKUs" : [ "aeiou" ],
    "ShipOptions" : [ {
      "CarrierLogoUrl" : "aeiou",
      "MethodType" : "aeiou",
      "CarrierName" : "aeiou",
      "MethodId" : 123456789,
      "Price" : {
        "CurrencyCode" : "aeiou",
        "Price" : 123456789,
        "FormattedPrice" : "aeiou"
      },
      "EstBusinessDaysTilDelivery" : 123456789,
      "Id" : 123456789,
      "Name" : "aeiou"
    } ]
  } ]
}}]
     
     - parameter shippingPricesRequest: (body) DTO with required information

     - returns: RequestBuilder<ShippingPricesResult> 
     */
    public class func pOSTShippingpricesWithRequestBuilder(shippingPricesRequest shippingPricesRequest: ShippingPricesRequest) -> RequestBuilder<ShippingPricesResult> {
        let path = "/shippingprices/"
        let URLString = SwaggerClientAPI.basePath + path
        
        let parameters = shippingPricesRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<ShippingPricesResult>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}
