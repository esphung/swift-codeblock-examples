/* 
FILENAME:	person.swift
PURPOSE:	blueprint class for barbershop qeue ios application
AUTHOR:		eric phung
DATE:		2017.08.13
 ____    ___  ____    _____  ___   ____          __  _       ____  _____ _____
|    \  /  _]|    \  / ___/ /   \ |    \        /  ]| T     /    T/ ___// ___/
|  o  )/  [_ |  D  )(   \_ Y     Y|  _  Y      /  / | |    Y  o  (   \_(   \_
|   _/Y    _]|    /  \__  T|  O  ||  |  |     /  /  | l___ |     |\__  T\__  T
|  |  |   [_ |    \  /  \ ||     ||  |  |    /   \_ |     T|  _  |/  \ |/  \ |
|  |  |     T|  .  Y \    |l     !|  |  |    \     ||     ||  |  |\    |\    |
l__j  l_____jl__j\_j  \___j \___/ l__j__j     \____jl_____jl__j__j \___j \___j

*/
class Person {

	// initialize variables
    var id_num: 		Int = 0
    var first_name: 	String
    var last_name: 		String
    var time_in:        String

    // null constructor
    init() {
    	self.first_name = 	""
        self.last_name = 	""
        self.time_in =    ""
    }
    
    // overloaded constructor
    init(first: String, last: String,time:String) {
        self.first_name = 	first
        self.last_name = 	last
        self.time_in =      time
    }
    

    // debug person print out method
    func simpleDescription() -> String {
        return "A person created:\nName:\t\(first_name) \(last_name)\nID:\t\t\(id_num)\nTime:\t\(time_in)"
    }

}// end class def




// test case
let object = Person(first:"eric",last:"phung",time:"")
print(object.simpleDescription())
