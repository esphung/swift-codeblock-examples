
//import SwiftyJson
//import Alamofire

// MARK: - Test Url
let url = "https://www.google.com/"

// MARK: - Invoke Alamofire Request
Alamofire.request(url).responseJSON { response in
	// log url request
	print("Request: \(String(describing: response.request))")

	// if serialized json response found
	if let json = response.result.value {
		// log plain json
		print("JSON: \(json)")

		//  convert json response to swiftyJSON
		if let swiftyJsonVar = JSON(json) {
			// log SwiftyJSON key/value
			print(swiftyJsonVar["replyStatus"])
		}//  end if SwiftyJSON

	} else {
		// no results found
		print("No results found")
	}//  end if json results

}// end alamo request


