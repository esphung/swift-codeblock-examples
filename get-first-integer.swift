func getFirstInteger(list: [String]) -> Int {
    // FIND FIRST INTEGER OBJECT IN A LIST, RETURN INDEX
    for (index, element) in list.enumerated() {
        let num = Int(element)
        if (num != nil) {
            //print("Found", element, "at position", index)
            return index
        }

    }

    return 0

}// end  get first integer

// MARK: - UNIT TEST
print(getFirstInteger(list: ["hello", "0", "world"]))