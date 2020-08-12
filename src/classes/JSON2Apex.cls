/**
* @Created By: Shravya Rama - 12.087.2020
* @Description: Parsing the JSON Structure into Apex Object
*/
public class JSON2Apex {

	public Address address;
	public Meta meta;

	public class Address {
		public List<String> colorKeys;
		public List<Integer> values;
	}    
    
	public class Meta {
		public Integer digits;
		public String processingPattern;
	}
	
	public static JSON2Apex parse(String json) {
		return (JSON2Apex) System.JSON.deserialize(json, JSON2Apex.class);
	}
}
