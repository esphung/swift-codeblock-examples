//
//  HandlerClass.swift
//  Pill Identifier App
//
//  Created by Eric Phung on 7/7/18.
//  Copyright © 2018 Phung Technology. All rights reserved.
//

import Foundation

// cases to search for
enum Search {
	case nlmRxImages// multiple params
	case rxcui// 9 or 8 digit code
}

// viewc vars
var rxcui = Search.rxcui
var nlm = Search.nlmRxImages


func getSearchUrlString(find: Search, str: String) -> String {
	var url = ""

	// tell me what to do in each case
	switch find {
		case .nlmRxImages:
		print("Welcome to nlmRxImages search ...")// do stuff
		// check color
		url = "http://rximage.nlm.nih.gov/api/rximage/1/rxnav?&color=" + str


		case .rxcui:
		print("Welcome to rxcui search ..")// and here
		url = "https://rxnav.nlm.nih.gov/REST/rxclass/class/byrxcui.json?rxcui=" + str
	}

	return url
	
}


// two very different searches by case
print(getSearchUrlString(find: nlm, str: "BLACK"))// nlm color
print(getSearchUrlString(find: rxcui, str: "198429"))// rxcui









