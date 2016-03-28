//
// OrderstatusAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class OrderstatusAPI: APIBase {
    /**
     
     Update an order status
     
     - parameter partnerBillingKey: (query) Partner billing key
     - parameter id: (query) Order Id
     - parameter orderStatusName: (query) Order status name for update
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func pOSTOrderstatus(partnerBillingKey partnerBillingKey: String, id: String, orderStatusName: String, completion: ((data: OrderStatusUpdateResult?, error: ErrorType?) -> Void)) {
        pOSTOrderstatusWithRequestBuilder(partnerBillingKey: partnerBillingKey, id: id, orderStatusName: orderStatusName).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Update an order status
     
     - POST /orderstatus/
     - Update status of each order item.
     - examples: [{contentType=application/json, example={
  "HadError" : true
}}]
     
     - parameter partnerBillingKey: (query) Partner billing key
     - parameter id: (query) Order Id
     - parameter orderStatusName: (query) Order status name for update

     - returns: RequestBuilder<OrderStatusUpdateResult> 
     */
    public class func pOSTOrderstatusWithRequestBuilder(partnerBillingKey partnerBillingKey: String, id: String, orderStatusName: String) -> RequestBuilder<OrderStatusUpdateResult> {
        let path = "/orderstatus/"
        let URLString = Gooten.API.ClientAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "partnerBillingKey": partnerBillingKey,
            "id": id,
            "orderStatusName": orderStatusName
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<OrderStatusUpdateResult>.Type = Gooten.API.ClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
    }

}
