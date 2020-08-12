# JUST ON Case Study by Shravya Rama - 12th August 2020

## Schema

Custom Object: Request_And_Response__c
* Custom Field: Request__c - Long Text Area(131072)	
* Custom Field: Response__c - Text(100)

### Components related to Case Study 
* Apex Class: restSumWebService, restSumWebService_Test, JSON2Apex
* Sample request: 
{
"jsonData": "{\"address\":{\"colorKeys\":[\"A\",\"G\",\"Z\"],\"values\":[74,117,115,23,79,110]},\"meta\":{\"digits\":33,\"processingPattern\":\"d{5}+[a-z&$\u00a7]\"}}"
}

* Sample response:

![image](https://user-images.githubusercontent.com/26061549/90040620-7738c300-dcc8-11ea-9066-ae849d9b2e46.png)
