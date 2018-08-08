//                       __                   __
//     ____  _________  / /_____  _________  / /
//    / __ \/ ___/ __ \/ __/ __ \/ ___/ __ \/ /
//   / /_/ / /  / /_/ / /_/ /_/ / /__/ /_/ / /
//  / .___/_/   \____/\__/\____/\___/\____/_/
// /_/

protocol SomeProtocol: class {
	func someMethod()
}

class SomeClass: SomeProtocol {
	func someMethod() {}
}
 

// let test  = SomeClass()
// test.someMethod()