# amazon_shipping.ShippingApi

All URIs are relative to *https://sellingpartnerapi-eu.amazon.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_shipment**](ShippingApi.md#cancel_shipment) | **PUT** /shipping/v2/shipments/{shipmentId}/cancel | 
[**direct_purchase_shipment**](ShippingApi.md#direct_purchase_shipment) | **POST** /shipping/v2/shipments/directPurchase | 
[**generate_collection_form**](ShippingApi.md#generate_collection_form) | **POST** /shipping/v2/collectionForms | 
[**get_access_points**](ShippingApi.md#get_access_points) | **GET** /shipping/v2/accessPoints | 
[**get_additional_inputs**](ShippingApi.md#get_additional_inputs) | **GET** /shipping/v2/shipments/additionalInputs/schema | 
[**get_carrier_account_form_inputs**](ShippingApi.md#get_carrier_account_form_inputs) | **GET** /shipping/v2/carrierAccountFormInputs | 
[**get_carrier_accounts**](ShippingApi.md#get_carrier_accounts) | **PUT** /shipping/v2/carrierAccounts | 
[**get_collection_form**](ShippingApi.md#get_collection_form) | **GET** /shipping/v2/collectionForms/{collectionFormId} | 
[**get_collection_form_history**](ShippingApi.md#get_collection_form_history) | **PUT** /shipping/v2/collectionForms/history | 
[**get_rates**](ShippingApi.md#get_rates) | **POST** /shipping/v2/shipments/rates | 
[**get_shipment_documents**](ShippingApi.md#get_shipment_documents) | **GET** /shipping/v2/shipments/{shipmentId}/documents | 
[**get_tracking**](ShippingApi.md#get_tracking) | **GET** /shipping/v2/tracking | 
[**get_unmanifested_shipments**](ShippingApi.md#get_unmanifested_shipments) | **PUT** /shipping/v2/unmanifestedShipments | 
[**link_carrier_account**](ShippingApi.md#link_carrier_account) | **PUT** /shipping/v2/carrierAccounts/{carrierId} | 
[**one_click_shipment**](ShippingApi.md#one_click_shipment) | **POST** /shipping/v2/oneClickShipment | 
[**purchase_shipment**](ShippingApi.md#purchase_shipment) | **POST** /shipping/v2/shipments | 
[**unlink_carrier_account**](ShippingApi.md#unlink_carrier_account) | **PUT** /shipping/v2/carrierAccounts/{carrierId}/unlink | 

# **cancel_shipment**
> CancelShipmentResponse cancel_shipment(shipment_id, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



Cancels a purchased shipment. Returns an empty object if the shipment is successfully cancelled.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
shipment_id = 'shipment_id_example' # str | The shipment identifier originally returned by the purchaseShipment operation.
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.cancel_shipment(shipment_id, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->cancel_shipment: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **str**| The shipment identifier originally returned by the purchaseShipment operation. | 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**CancelShipmentResponse**](CancelShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **direct_purchase_shipment**
> DirectPurchaseResponse direct_purchase_shipment(body, x_amzn_idempotency_key=x_amzn_idempotency_key, locale=locale, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



Purchases the shipping service for a shipment using the best fit service offering. Returns purchase related details and documents.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
body = amazon_shipping.DirectPurchaseRequest() # DirectPurchaseRequest | 
x_amzn_idempotency_key = 'x_amzn_idempotency_key_example' # str | A unique value which the server uses to recognize subsequent retries of the same request. (optional)
locale = 'locale_example' # str | The IETF Language Tag. Note that this only supports the primary language subtag with one secondary language subtag (i.e. en-US, fr-CA). The secondary language subtag is almost always a regional designation. This does not support additional subtags beyond the primary and secondary language subtags.  (optional)
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.direct_purchase_shipment(body, x_amzn_idempotency_key=x_amzn_idempotency_key, locale=locale, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->direct_purchase_shipment: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DirectPurchaseRequest**](DirectPurchaseRequest.md)|  | 
 **x_amzn_idempotency_key** | **str**| A unique value which the server uses to recognize subsequent retries of the same request. | [optional] 
 **locale** | **str**| The IETF Language Tag. Note that this only supports the primary language subtag with one secondary language subtag (i.e. en-US, fr-CA). The secondary language subtag is almost always a regional designation. This does not support additional subtags beyond the primary and secondary language subtags.  | [optional] 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**DirectPurchaseResponse**](DirectPurchaseResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_collection_form**
> GenerateCollectionFormResponse generate_collection_form(body, x_amzn_idempotency_key=x_amzn_idempotency_key, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



This API  Call to generate the collection form.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
body = amazon_shipping.GenerateCollectionFormRequest() # GenerateCollectionFormRequest | 
x_amzn_idempotency_key = 'x_amzn_idempotency_key_example' # str | A unique value which the server uses to recognize subsequent retries of the same request. (optional)
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.generate_collection_form(body, x_amzn_idempotency_key=x_amzn_idempotency_key, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->generate_collection_form: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenerateCollectionFormRequest**](GenerateCollectionFormRequest.md)|  | 
 **x_amzn_idempotency_key** | **str**| A unique value which the server uses to recognize subsequent retries of the same request. | [optional] 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GenerateCollectionFormResponse**](GenerateCollectionFormResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_access_points**
> GetAccessPointsResponse get_access_points(access_point_types, country_code, postal_code, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



Returns a list of access points in proximity of input postal code.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
access_point_types = ['access_point_types_example'] # list[str] | 
country_code = 'country_code_example' # str | 
postal_code = 'postal_code_example' # str | 
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.get_access_points(access_point_types, country_code, postal_code, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->get_access_points: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_point_types** | [**list[str]**](str.md)|  | 
 **country_code** | **str**|  | 
 **postal_code** | **str**|  | 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetAccessPointsResponse**](GetAccessPointsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_additional_inputs**
> GetAdditionalInputsResponse get_additional_inputs(request_token, rate_id, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



Returns the JSON schema to use for providing additional inputs when needed to purchase a shipping offering. Call the getAdditionalInputs operation when the response to a previous call to the getRates operation indicates that additional inputs are required for the rate (shipping offering) that you want to purchase.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
request_token = 'request_token_example' # str | The request token returned in the response to the getRates operation.
rate_id = 'rate_id_example' # str | The rate identifier for the shipping offering (rate) returned in the response to the getRates operation.
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.get_additional_inputs(request_token, rate_id, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->get_additional_inputs: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_token** | **str**| The request token returned in the response to the getRates operation. | 
 **rate_id** | **str**| The rate identifier for the shipping offering (rate) returned in the response to the getRates operation. | 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetAdditionalInputsResponse**](GetAdditionalInputsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_carrier_account_form_inputs**
> GetCarrierAccountFormInputsResponse get_carrier_account_form_inputs(x_amzn_shipping_business_id=x_amzn_shipping_business_id)



This API will return a list of input schema required to register a shipper account with the carrier.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.get_carrier_account_form_inputs(x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->get_carrier_account_form_inputs: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetCarrierAccountFormInputsResponse**](GetCarrierAccountFormInputsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_carrier_accounts**
> GetCarrierAccountsResponse get_carrier_accounts(body, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



This API will return Get all carrier accounts for a merchant.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
body = amazon_shipping.GetCarrierAccountsRequest() # GetCarrierAccountsRequest | 
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.get_carrier_accounts(body, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->get_carrier_accounts: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetCarrierAccountsRequest**](GetCarrierAccountsRequest.md)|  | 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetCarrierAccountsResponse**](GetCarrierAccountsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_collection_form**
> GetCollectionFormResponse get_collection_form(collection_form_id, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



This API reprint a collection form.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
collection_form_id = 'collection_form_id_example' # str | collection form Id to reprint a collection.
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.get_collection_form(collection_form_id, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->get_collection_form: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collection_form_id** | **str**| collection form Id to reprint a collection. | 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetCollectionFormResponse**](GetCollectionFormResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_collection_form_history**
> GetCollectionFormHistoryResponse get_collection_form_history(body, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



This API Call to get the history of the previously generated collection forms.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
body = amazon_shipping.GetCollectionFormHistoryRequest() # GetCollectionFormHistoryRequest | 
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.get_collection_form_history(body, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->get_collection_form_history: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetCollectionFormHistoryRequest**](GetCollectionFormHistoryRequest.md)|  | 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetCollectionFormHistoryResponse**](GetCollectionFormHistoryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_rates**
> GetRatesResponse get_rates(body, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



Returns the available shipping service offerings.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
body = amazon_shipping.GetRatesRequest() # GetRatesRequest | 
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.get_rates(body, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->get_rates: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetRatesRequest**](GetRatesRequest.md)|  | 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetRatesResponse**](GetRatesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_shipment_documents**
> GetShipmentDocumentsResponse get_shipment_documents(shipment_id, package_client_reference_id, format=format, dpi=dpi, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



Returns the shipping documents associated with a package in a shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
shipment_id = 'shipment_id_example' # str | The shipment identifier originally returned by the purchaseShipment operation.
package_client_reference_id = 'package_client_reference_id_example' # str | The package client reference identifier originally provided in the request body parameter for the getRates operation.
format = 'format_example' # str | The file format of the document. Must be one of the supported formats returned by the getRates operation. (optional)
dpi = 1.2 # float | The resolution of the document (for example, 300 means 300 dots per inch). Must be one of the supported resolutions returned in the response to the getRates operation. (optional)
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.get_shipment_documents(shipment_id, package_client_reference_id, format=format, dpi=dpi, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->get_shipment_documents: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **str**| The shipment identifier originally returned by the purchaseShipment operation. | 
 **package_client_reference_id** | **str**| The package client reference identifier originally provided in the request body parameter for the getRates operation. | 
 **format** | **str**| The file format of the document. Must be one of the supported formats returned by the getRates operation. | [optional] 
 **dpi** | **float**| The resolution of the document (for example, 300 means 300 dots per inch). Must be one of the supported resolutions returned in the response to the getRates operation. | [optional] 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetShipmentDocumentsResponse**](GetShipmentDocumentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tracking**
> GetTrackingResponse get_tracking(tracking_id, carrier_id, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



Returns tracking information for a purchased shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
tracking_id = 'tracking_id_example' # str | A carrier-generated tracking identifier originally returned by the purchaseShipment operation.
carrier_id = 'carrier_id_example' # str | A carrier identifier originally returned by the getRates operation for the selected rate.
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.get_tracking(tracking_id, carrier_id, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->get_tracking: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tracking_id** | **str**| A carrier-generated tracking identifier originally returned by the purchaseShipment operation. | 
 **carrier_id** | **str**| A carrier identifier originally returned by the getRates operation for the selected rate. | 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetTrackingResponse**](GetTrackingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_unmanifested_shipments**
> GetUnmanifestedShipmentsResponse get_unmanifested_shipments(body, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



This API Get all unmanifested carriers with shipment locations. Any locations which has unmanifested shipments         with an eligible carrier for manifesting shall be returned.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
body = amazon_shipping.GetUnmanifestedShipmentsRequest() # GetUnmanifestedShipmentsRequest | 
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.get_unmanifested_shipments(body, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->get_unmanifested_shipments: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GetUnmanifestedShipmentsRequest**](GetUnmanifestedShipmentsRequest.md)|  | 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**GetUnmanifestedShipmentsResponse**](GetUnmanifestedShipmentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **link_carrier_account**
> LinkCarrierAccountResponse link_carrier_account(body, carrier_id, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



This API associates/links the specified carrier account with the merchant.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
body = amazon_shipping.LinkCarrierAccountRequest() # LinkCarrierAccountRequest | 
carrier_id = 'carrier_id_example' # str | The unique identifier associated with the carrier account.
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.link_carrier_account(body, carrier_id, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->link_carrier_account: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LinkCarrierAccountRequest**](LinkCarrierAccountRequest.md)|  | 
 **carrier_id** | **str**| The unique identifier associated with the carrier account. | 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**LinkCarrierAccountResponse**](LinkCarrierAccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **one_click_shipment**
> OneClickShipmentResponse one_click_shipment(body, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



Purchases a shipping service identifier and returns purchase-related details and documents.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
body = amazon_shipping.OneClickShipmentRequest() # OneClickShipmentRequest | 
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.one_click_shipment(body, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->one_click_shipment: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OneClickShipmentRequest**](OneClickShipmentRequest.md)|  | 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**OneClickShipmentResponse**](OneClickShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purchase_shipment**
> PurchaseShipmentResponse purchase_shipment(body, x_amzn_idempotency_key=x_amzn_idempotency_key, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



Purchases a shipping service and returns purchase related details and documents.  Note: You must complete the purchase within 10 minutes of rate creation by the shipping service provider. If you make the request after the 10 minutes have expired, you will receive an error response with the error code equal to \"TOKEN_EXPIRED\". If you receive this error response, you must get the rates for the shipment again.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
body = amazon_shipping.PurchaseShipmentRequest() # PurchaseShipmentRequest | 
x_amzn_idempotency_key = 'x_amzn_idempotency_key_example' # str | A unique value which the server uses to recognize subsequent retries of the same request. (optional)
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.purchase_shipment(body, x_amzn_idempotency_key=x_amzn_idempotency_key, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->purchase_shipment: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PurchaseShipmentRequest**](PurchaseShipmentRequest.md)|  | 
 **x_amzn_idempotency_key** | **str**| A unique value which the server uses to recognize subsequent retries of the same request. | [optional] 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**PurchaseShipmentResponse**](PurchaseShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlink_carrier_account**
> UnlinkCarrierAccountResponse unlink_carrier_account(body, carrier_id, x_amzn_shipping_business_id=x_amzn_shipping_business_id)



This API Unlink the specified carrier account with the merchant.   **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 80 | 100 |  The `x-amzn-RateLimit-Limit` response header returns the usage plan rate limits that were applied to the requested operation, when available. The table above indicates the default rate and burst values for this operation. Selling partners whose business demands require higher throughput may see higher rate and burst values then those shown here. For more information, see [Usage Plans and Rate Limits in the Selling Partner API](https://developer-docs.amazon.com/sp-api/docs/usage-plans-and-rate-limits-in-the-sp-api).

### Example
```python
from __future__ import print_function
import time
import amazon_shipping
from amazon_shipping.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = amazon_shipping.ShippingApi()
body = amazon_shipping.UnlinkCarrierAccountRequest() # UnlinkCarrierAccountRequest | 
carrier_id = 'carrier_id_example' # str | carrier Id to unlink with merchant.
x_amzn_shipping_business_id = 'x_amzn_shipping_business_id_example' # str | Amazon shipping business to assume for this request. The default is AmazonShipping_UK. (optional)

try:
    api_response = api_instance.unlink_carrier_account(body, carrier_id, x_amzn_shipping_business_id=x_amzn_shipping_business_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ShippingApi->unlink_carrier_account: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UnlinkCarrierAccountRequest**](UnlinkCarrierAccountRequest.md)|  | 
 **carrier_id** | **str**| carrier Id to unlink with merchant. | 
 **x_amzn_shipping_business_id** | **str**| Amazon shipping business to assume for this request. The default is AmazonShipping_UK. | [optional] 

### Return type

[**UnlinkCarrierAccountResponse**](UnlinkCarrierAccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

