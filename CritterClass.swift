/*
filename:		CritterClass.swift
name:			eric phung
date:			Wed Aug  8 00:55:11 2018
purpose:		example template for swift3 class
*/

class Critter {

	// MARK: - Class Initializers
	init() {
		self.name  =  ""
	}
	init(name: String) {
		self.name = name
	}//  end overload constructor

	// MARK: - Class Properties
	private var name: String!

	// MARK: - Class Methods
    func setName(_ str: String) {
        self.name = str
    }// end set

    func getName() -> String {
    	return self.name
    }// end  get

	// MARK: - Class Destructor
	deinit {
		print("Destroyed", self)
	}// end destructor

	// MARK: - Class Protocol
	func console() {
		// display instance info
		self.setName("Foo")
		dump(self)
	}//  end protocol

}// classdef

// MARK: - Optional Protocol
protocol CritterUnitTest: class {
	func console()
}

// MARK: - Test Class Instance
let obj = Critter()
obj.console()

