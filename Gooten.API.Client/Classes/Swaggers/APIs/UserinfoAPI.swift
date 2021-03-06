//
// UserinfoAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class UserinfoAPI: APIBase {
    /**
     
     Get the user's language code and country based upon IP
     
     - parameter languageCode: (query) Two-character language code, if known at the time.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getUserinfo(languageCode languageCode: String?, completion: ((data: UserInfo?, error: ErrorType?) -> Void)) {
        getUserinfoWithRequestBuilder(languageCode: languageCode).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Get the user's language code and country based upon IP
     
     - GET /userinfo/
     - IP-based user info lookup
     - examples: [{contentType=application/json, example={
  "CurrencyCode" : "aeiou",
  "LanguageCode" : "aeiou",
  "CountryName" : "aeiou",
  "CurrencyFormat" : "aeiou",
  "CountryCode" : "aeiou",
  "CurrencyName" : "aeiou"
}}]
     
     - parameter languageCode: (query) Two-character language code, if known at the time.

     - returns: RequestBuilder<UserInfo> 
     */
    public class func getUserinfoWithRequestBuilder(languageCode languageCode: String?) -> RequestBuilder<UserInfo> {
        let path = "/userinfo/"
        let URLString = Gooten.API.ClientAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "languageCode": languageCode
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<UserInfo>.Type = Gooten.API.ClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
