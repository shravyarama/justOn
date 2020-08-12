/**
* @Created By: Shravya Rama - 12.087.2020
* @Description: Exposing the apex class to be called from external system for HttpPost
* @sampleUrl: https://eu27.lightning.force.com/services/apexrest/getSum/
*/
@RestResource(urlMapping='/getSum/*')
global with sharing class restSumWebService {
    /**
    * @Description: returns sum of the values from the defined JSON data structure
    * to be appended to the request url
    * @param: jsonData - Expecting input data format in json
    */
    @HttpPost
    global static String getSum(String jsonData) {
        String response;
        responseStructure resStruct;
        try{
            Integer sum = 0; 
            JSON2Apex obj = JSON2Apex.parse(jsonData);
            List<Integer> integersList = obj.address.values;
            for(Integer num : integersList)
            {
                sum += num;
            }
            resStruct = new responseStructure(200, String.valueOf(sum));    
            
            
        }
        catch(Exception e){
            resStruct = new responseStructure(400, 'Invalid JSON Structure');
        }
        //Store the request and response on Custom Object
        saveResults(jsonData, String.valueOf(resStruct));
        
        return String.valueOf(resStruct);
        
    }
    
    /**
    * @Description: Standard Salesforce response structure
    */
    public class responseStructure {
        public Integer responseCode;
        public String message;
        public responseStructure(Integer responseCode, string message){
            this.responseCode = responseCode;
            this.message = message;
        }
    }
    
    /**
    * @Description: helper method to save Request and Response on Custom Object Request_And_Response__c
    * @param req - Request string
    * @param res - Response string
    */
    @future    
    public static void saveResults(String req, String res){
        insert new Request_And_Response__c(Request__c = req, Response__c = res);
    }
    
}