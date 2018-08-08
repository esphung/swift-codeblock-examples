// MARK: - Errors
enum MyError: Error {
	case runtimeError(String)
}

func someFunction() throws {
	// throw error
	throw MyError.runtimeError("some error message")

}// end someFunction

// MARK: - Try Doing Something
do {
	// try some function that throws an error
    try someFunction()

} catch MyError.runtimeError(let errorMessage) {
    // else call error handler
    print(errorMessage)
}

