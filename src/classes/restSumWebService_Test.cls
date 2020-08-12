/**
* @Created By: Shravya Rama - 12.087.2020
* @Description: Test class for restSumWebService
*/
@isTest
public class restSumWebService_Test {
    
    //Testing POsitive Scenario
    @isTest static void testPositiveGetSum() {
        // Call the method to test
        String jsonData = '{'+
            '\"address\": {'+
            '\"colorKeys\": ['+
            '\"A\",'+
            '\"G\",'+
            '\"Z\"'+
            '],'+
            '\"values\": ['+
            '74,'+
            '117,'+
            '115,'+
            '116,'+
            '79,'+
            '110'+
            ']'+
            '},'+
            '\"meta\": {'+
            '\"digits\": 33,'+
            '\"processingPattern\": \"d{5}+[a-z&$§]\"'+
            '}'+
            '}';
        String response = restSumWebService.getSum(jsonData);
        System.assertEquals(response, 'responseStructure:[message=518, responseCode=200]');
    }
    
     //Testing Negative Scenario
    @isTest static void testNegativeGetSum() {
        // Call the method to test
        String jsonData = '{'+
            '\"address\": {'+
            '\"colorKeys\": ['+
            '\"A\",'+
            '\"G\",'+
            '\"Z\"'+
            '],'+
            '\"values\": ['+
            'er,'+
            're,'+
            '115,'+
            '116,'+
            '79,'+
            '110'+
            ']'+
            '},'+
            '\"meta\": {'+
            '\"digits\": 33,'+
            '\"processingPattern\": \"d{5}+[a-z&$§]\"'+
            '}'+
            '}';
        String response = restSumWebService.getSum(jsonData);
        System.assertEquals(response, 'responseStructure:[message=Invalid JSON Structure, responseCode=400]');
        
    }
    
}