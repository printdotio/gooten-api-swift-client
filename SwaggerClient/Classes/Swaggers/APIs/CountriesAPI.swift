//
// CountriesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CountriesAPI: APIBase {
    /**
     
     Get a list of supported countries. Output is in specified language.
     
     - parameter languageCode: (query) Two-character language code, like \&quot;en\&quot; (english)
     - parameter key: (query) A string used to query the language dictionary for specific values within a category.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func countries(languageCode languageCode: String?, key: String?, completion: ((data: CountryList?, error: ErrorType?) -> Void)) {
        countriesWithRequestBuilder(languageCode: languageCode, key: key).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get a list of supported countries. Output is in specified language.
     
     - GET /countries/
     - Get a list of supported countries. Output is in specified language.
     - examples: [{contentType=application/json, example={
  "Countries" : [ {
    "MeasurementCode" : "aeiou",
    "FlagUrl" : "aeiou",
    "DefaultCurrency" : {
      "Format" : "aeiou",
      "Code" : "aeiou",
      "Name" : "aeiou"
    },
    "IsSupported" : true,
    "Code" : "aeiou",
    "Name" : "aeiou"
  } ]
}}]
     
     - parameter languageCode: (query) Two-character language code, like \&quot;en\&quot; (english)
     - parameter key: (query) A string used to query the language dictionary for specific values within a category.

     - returns: RequestBuilder<CountryList> 
     */
    public class func countriesWithRequestBuilder(languageCode languageCode: String?, key: String?) -> RequestBuilder<CountryList> {
        let path = "/countries/"
        let URLString = SwaggerClientAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "languageCode": languageCode,
            "key": key
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<CountryList>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}