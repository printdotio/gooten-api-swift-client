//
// OrdersearchAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire




public class OrdersearchAPI: APIBase {

    /**
     
     Search an orders
     
     - parameter partnerBillingKey: (query) Partner billing key
     - parameter genericValues: (query) Any value which is related to order (partner name, address, phone, couponCode, etc...)
     - parameter lastName: (query) Partner last name
     - parameter email: (query) Partner email
     - parameter postalCode: (query) Billing/Shipping address postal code
     - parameter startDate: (query) Start date of the date range when order was created
     - parameter endDate: (query) End date of the date range when order was created
     - parameter uniqueUserId: (query) User Id
     - parameter partnerId: (query) Partner Id
     - parameter pageSize: (query) How many items to return in reponse.
     - parameter page: (query) Page number, how many items to skip.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func gETOrdersearch(partnerBillingKey partnerBillingKey: String, genericValues: String?, lastName: String?, email: String?, postalCode: String?, startDate: String?, endDate: String?, uniqueUserId: String?, partnerId: Int?, pageSize: Int?, page: Int?, completion: ((data: SubmittedOrderList?, error: ErrorType?) -> Void)) {
        gETOrdersearchWithRequestBuilder(partnerBillingKey: partnerBillingKey, genericValues: genericValues, lastName: lastName, email: email, postalCode: postalCode, startDate: startDate, endDate: endDate, uniqueUserId: uniqueUserId, partnerId: partnerId, pageSize: pageSize, page: page).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }



    /**
     
     Search an orders
     
     - GET /ordersearch/
     - Search through the orders and return information about orders that match search criteria.
     - examples: [{contentType=application/json, example={
  "Orders" : [ {
    "Meta" : "",
    "ShippingTotal" : "",
    "SourceId" : "aeiou",
    "Total" : "",
    "NiceId" : "aeiou",
    "Items" : [ {
      "Status" : "aeiou",
      "Meta" : {
        "Value" : "aeiou",
        "Key" : "aeiou"
      },
      "TrackingNumber" : "aeiou",
      "SourceId" : "aeiou",
      "Product" : "aeiou",
      "Quantity" : 123456789,
      "ProductId" : 123456789,
      "DiscountAmount" : "",
      "ShipCarrierName" : "aeiou",
      "Price" : {
        "CurrencyCode" : "aeiou",
        "Price" : 123456789,
        "CurrencyFormat" : "aeiou",
        "FormattedPrice" : "aeiou",
        "CurrencyDigits" : 123456789
      },
      "Sku" : "aeiou",
      "TrackingUrl" : "aeiou",
      "Shipments" : [ {
        "ShipCarrierName" : "aeiou",
        "TrackingNumber" : "aeiou",
        "TrackingUrl" : "aeiou"
      } ]
    } ],
    "Id" : "aeiou",
    "DiscountCode" : "aeiou",
    "DiscountAmount" : ""
  } ],
  "TotalPages" : 123456789,
  "Page" : 123456789,
  "HadError" : true
}}]
     
     - parameter partnerBillingKey: (query) Partner billing key
     - parameter genericValues: (query) Any value which is related to order (partner name, address, phone, couponCode, etc...)
     - parameter lastName: (query) Partner last name
     - parameter email: (query) Partner email
     - parameter postalCode: (query) Billing/Shipping address postal code
     - parameter startDate: (query) Start date of the date range when order was created
     - parameter endDate: (query) End date of the date range when order was created
     - parameter uniqueUserId: (query) User Id
     - parameter partnerId: (query) Partner Id
     - parameter pageSize: (query) How many items to return in reponse.
     - parameter page: (query) Page number, how many items to skip.

     - returns: RequestBuilder<SubmittedOrderList> 
     */
    public class func gETOrdersearchWithRequestBuilder(partnerBillingKey partnerBillingKey: String, genericValues: String?, lastName: String?, email: String?, postalCode: String?, startDate: String?, endDate: String?, uniqueUserId: String?, partnerId: Int?, pageSize: Int?, page: Int?) -> RequestBuilder<SubmittedOrderList> {
        let path = "/ordersearch/"
        let URLString = Gooten.API.ClientAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "partnerBillingKey": partnerBillingKey,
            "genericValues": genericValues,
            "lastName": lastName,
            "email": email,
            "postalCode": postalCode,
            "startDate": startDate,
            "endDate": endDate,
            "uniqueUserId": uniqueUserId,
            "partnerId": partnerId,
            "pageSize": pageSize,
            "page": page
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<SubmittedOrderList>.Type = Gooten.API.ClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }


}

