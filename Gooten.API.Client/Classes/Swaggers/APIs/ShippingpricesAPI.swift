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
     - parameter partnerBillingKey: (query) Partner billing key
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func pOSTShippingprices(shippingPricesRequest shippingPricesRequest: ShippingPricesRequest, partnerBillingKey: String?, completion: ((data: ShippingPricesResult?, error: ErrorType?) -> Void)) {
        pOSTShippingpricesWithRequestBuilder(shippingPricesRequest: shippingPricesRequest, partnerBillingKey: partnerBillingKey).execute { (response, error) -> Void in
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
      "PartnerPrice" : "",
      "Name" : "aeiou"
    } ]
  } ]
}}]
     
     - parameter shippingPricesRequest: (body) DTO with required information
     - parameter partnerBillingKey: (query) Partner billing key

     - returns: RequestBuilder<ShippingPricesResult> 
     */
    public class func pOSTShippingpricesWithRequestBuilder(shippingPricesRequest shippingPricesRequest: ShippingPricesRequest, partnerBillingKey: String?) -> RequestBuilder<ShippingPricesResult> {
        let path = "/shippingprices/"
        let URLString = Gooten.API.ClientAPI.basePath + path
        
        let parameters = shippingPricesRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<ShippingPricesResult>.Type = Gooten.API.ClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
    }


}

