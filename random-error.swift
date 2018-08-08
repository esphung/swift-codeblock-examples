


// MARK: - Random Value
import Foundation
var error = Int(arc4random_uniform(2))//RANDOM VALUE

// MARK: - Errors
enum MyError: Error {
	case runtimeError(String)
}

func someFunction(_ number: Int) throws {
	if (number == 0) {
		// value valid
	} else {
		// throw error
		throw MyError.runtimeError("some error message")
	}

}// end someFunction

// MARK: - Test Value
if error != 0 {
	do {
		// try some function that throws an error
	    try someFunction(error)

	} catch MyError.runtimeError(let errorMessage) {
	    // else call error handler
	    print(errorMessage)
	}

}// end if


