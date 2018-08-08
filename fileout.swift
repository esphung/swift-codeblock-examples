import Foundation

// Read data from this file.
let path = "/Users/unixadmin-macbook/Desktop/names.csv"

do {
    // Use contentsOfFile overload.
    // ... Specify ASCII encoding.
    // ... Ignore errors.
    let data = try NSString(contentsOfFile: path,
        encoding: String.Encoding.ascii.rawValue)

    // If a value was returned, print it.
    print(data)
}
