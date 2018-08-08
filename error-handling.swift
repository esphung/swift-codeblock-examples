enum MyError: Error {
	case runtimeError(String)
}

func someFunction() throws {
    throw MyError.runtimeError("some message")
}
do {
    try someFunction()
} 
catch MyError.runtimeError(let errorMessage) {
	print(errorMessage)
}
