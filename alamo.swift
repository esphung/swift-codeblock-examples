

// get http request
Alamofire.request(url).responseJSON { response in
	//print("Request: \(String(describing: response.request))")   // original url request
	if let json = response.result.value {
		//print("JSON: \(json)") // serialized json response
		let swiftyJsonVar = JSON(json)//  conert json response to swiftyJSON
		print(swiftyJsonVar["replyStatus"])
		
		// get results as pill array
		//print(swiftyJsonVar["nlmRxImages"])// list of pills
		
		// one or more pill found
		if swiftyJsonVar["replyStatus"]["totalImageCount"]  > 0 {
			// send pill array to results page here
			//self.boxBtn11.setImage(UIImage(named: placeholder), for: .normal)
			self.displayResultsPage(json: swiftyJsonVar)

		} else {
			// no results found
		}
		
	}
}