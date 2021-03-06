//
// AddressvalidationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class AddressvalidationAPI: APIBase {
    /**
     
     Validates an address and returns a suggested address (if available) and a validation score.
     
     - parameter line1: (query) Address line1.
     - parameter line2: (query) Address line2.
     - parameter city: (query) Address city.
     - parameter state: (query) Address state.
     - parameter postalCode: (query) Address postal code/zip.
     - parameter countryCode: (query) Address country code.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addressvalidation(line1 line1: String?, line2: String?, city: String?, state: String?, postalCode: String?, countryCode: String?, completion: ((data: Result?, error: ErrorType?) -> Void)) {
        addressvalidationWithRequestBuilder(line1: line1, line2: line2, city: city, state: state, postalCode: postalCode, countryCode: countryCode).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Validates an address and returns a suggested address (if available) and a validation score.
     
     - GET /addressvalidation/
     - Validates an address and returns a suggested address (if available) and a validation score.
     - examples: [{contentType=application/json, example={
  "Score" : 123456789,
  "ProposedAddress" : {
    "PostalCode" : "aeiou",
    "StreetLines" : [ "aeiou" ],
    "City" : "aeiou",
    "CountryCode" : "aeiou",
    "StateOrProvinceCode" : "aeiou"
  },
  "Reason" : "aeiou",
  "IsValid" : true
}}]
     
     - parameter line1: (query) Address line1.
     - parameter line2: (query) Address line2.
     - parameter city: (query) Address city.
     - parameter state: (query) Address state.
     - parameter postalCode: (query) Address postal code/zip.
     - parameter countryCode: (query) Address country code.

     - returns: RequestBuilder<Result> 
     */
    public class func addressvalidationWithRequestBuilder(line1 line1: String?, line2: String?, city: String?, state: String?, postalCode: String?, countryCode: String?) -> RequestBuilder<Result> {
        let path = "/addressvalidation/"
        let URLString = Gooten.API.ClientAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "line1": line1,
            "line2": line2,
            "city": city,
            "state": state,
            "postalCode": postalCode,
            "countryCode": countryCode
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Result>.Type = Gooten.API.ClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
