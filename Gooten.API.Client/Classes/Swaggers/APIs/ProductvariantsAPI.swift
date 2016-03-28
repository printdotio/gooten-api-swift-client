//
// ProductvariantsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ProductvariantsAPI: APIBase {
    /**
     
     Get a list of available product variations. Includes pricing information
     
     - parameter countryCode: (query) The country code the order would be shipped to. For example, &#39;US&#39; or &#39;FR&#39;
     - parameter productId: (query) Recipe product ID, such as those returned from the /products service
     - parameter version: (path) Version of the api being used
     - parameter source: (path) Description of the source-- ios, android, api, widget
     - parameter partnerBillingKey: (query) Partner billing key
     - parameter all: (query) Whether or not to return all available printio products, or just ones in your recipe. Pass &#39;true&#39; or &#39;false&#39;.
     - parameter languageCode: (query) Two-character language code, defaults to \&quot;en\&quot; (english)
     - parameter currencyCode: (query) Three character currency code, defaults to \&quot;USD\&quot; (united states dollar)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getProductvariants(countryCode countryCode: String, productId: String, version: Int, source: String, partnerBillingKey: String?, all: String?, languageCode: String?, currencyCode: String?, completion: ((data: ProductVariantResponse?, error: ErrorType?) -> Void)) {
        getProductvariantsWithRequestBuilder(countryCode: countryCode, productId: productId, version: version, source: source, partnerBillingKey: partnerBillingKey, all: all, languageCode: languageCode, currencyCode: currencyCode).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a list of available product variations. Includes pricing information
     
     - GET /v/{version}/source/{source}/productvariants/
     - Get a list of all available product variations, or if one passes in a specific product type id (productId), gets a list of available variations of a recipe product.
     - examples: [{contentType=application/json, example={
  "Options" : [ {
    "Values" : [ "" ],
    "Name" : "aeiou"
  } ],
  "ProductVariants" : [ {
    "Options" : [ {
      "OptionId" : "aeiou",
      "SortValue" : "aeiou",
      "Value" : "aeiou",
      "ImageUrl" : "aeiou",
      "ValueId" : "aeiou",
      "CmValue" : "aeiou",
      "RgbaColor" : "aeiou",
      "Name" : "aeiou",
      "ImageType" : "aeiou"
    } ],
    "HasTemplates" : true,
    "PartnerPriceInfo" : "",
    "Sku" : "aeiou",
    "MaxImages" : 123456789,
    "PriceInfo" : {
      "CurrencyCode" : "aeiou",
      "Price" : 123456789,
      "CurrencyFormat" : "aeiou",
      "FormattedPrice" : "aeiou",
      "CurrencyDigits" : 123456789
    }
  } ]
}}]
     
     - parameter countryCode: (query) The country code the order would be shipped to. For example, &#39;US&#39; or &#39;FR&#39;
     - parameter productId: (query) Recipe product ID, such as those returned from the /products service
     - parameter version: (path) Version of the api being used
     - parameter source: (path) Description of the source-- ios, android, api, widget
     - parameter partnerBillingKey: (query) Partner billing key
     - parameter all: (query) Whether or not to return all available printio products, or just ones in your recipe. Pass &#39;true&#39; or &#39;false&#39;.
     - parameter languageCode: (query) Two-character language code, defaults to \&quot;en\&quot; (english)
     - parameter currencyCode: (query) Three character currency code, defaults to \&quot;USD\&quot; (united states dollar)

     - returns: RequestBuilder<ProductVariantResponse> 
     */
    public class func getProductvariantsWithRequestBuilder(countryCode countryCode: String, productId: String, version: Int, source: String, partnerBillingKey: String?, all: String?, languageCode: String?, currencyCode: String?) -> RequestBuilder<ProductVariantResponse> {
        var path = "/v/{version}/source/{source}/productvariants/"
        path = path.stringByReplacingOccurrencesOfString("{version}", withString: "\(version)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{source}", withString: "\(source)", options: .LiteralSearch, range: nil)
        let URLString = Gooten.API.ClientAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "partnerBillingKey": partnerBillingKey,
            "countryCode": countryCode,
            "productId": productId,
            "all": all,
            "languageCode": languageCode,
            "currencyCode": currencyCode
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ProductVariantResponse>.Type = Gooten.API.ClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
