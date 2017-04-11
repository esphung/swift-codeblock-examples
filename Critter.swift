/*
file:	Critter.swift
me:		ericphung
date
bcuz:	template for swift3 class
*/

class Critter {

	// var
	private var name:String!

	//methods
    func setName(str:String) {
        self.name = str
    }// set

    func getName() -> String {
    	return self.name
    }// get

}// classdef

let lilGuy = Critter()

lilGuy.setName(str:"Thomas")

print(lilGuy.getName())