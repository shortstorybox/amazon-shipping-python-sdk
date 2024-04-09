# AccessPoint

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_point_id** | [**AccessPointId**](AccessPointId.md) |  | [optional] 
**name** | **str** | Name of entity (store/hub etc) where this access point is located | [optional] 
**timezone** | **str** | Timezone of access point | [optional] 
**type** | [**AccessPointType**](AccessPointType.md) |  | [optional] 
**accessibility_attributes** | [**AccessibilityAttributes**](AccessibilityAttributes.md) |  | [optional] 
**address** | [**Address**](Address.md) |  | [optional] 
**exception_operating_hours** | [**list[ExceptionOperatingHours]**](ExceptionOperatingHours.md) |  | [optional] 
**assistance_type** | **str** |  | [optional] 
**score** | **str** | The score of access point, based on proximity to postal code and sorting preference. This can be used to sort access point results on shipper&#x27;s end. | [optional] 
**standard_operating_hours** | [**DayOfWeekTimeMap**](DayOfWeekTimeMap.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

