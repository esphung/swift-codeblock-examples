import Foundation

extension Array {
    // MARK: - Custom Swift Array Method  to Split
    func split(at: Int) -> (left: [Element], right: [Element]) {
        let ct = self.count
        let half = ct / 2
        let leftSplit = self[0 ..< half - 1]
        let rightSplit = self[at ..< ct]
        return (left: Array(leftSplit), right: Array(rightSplit))
    }
}

func matches(for regex: String, in text: String) -> [String] {
    // MARK: - FIND REG EXP MATCHES IN A STRING
    do {
        let regex = try NSRegularExpression(pattern: regex)
        let results = regex.matches(in: text,
                                    range: NSRange(text.startIndex..., in: text))
        return results.map {
            String(text[Range($0.range, in: text)!])
        }
    } catch let error {
        print("invalid regex: \(error.localizedDescription)")
        return []
    }
}

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


// EXAMPLE STRING TO PARSE
let string = "sildenafil acetate 50 MG Oral Tablet [Viagra]"
print(string)

// PARSE INTO LIST OF MATCHING EXPRESSION
let matched = matches(for: "([^\\s]+)", in: string)
print(matched)

// SPLIT LIST INTO TWO SEPARATE LISTS AT SOME POSITION
let splitArray = matched.split(at: getFirstInteger(list: matched))
print("LEFT:", splitArray.left,"| RIGHT:", splitArray.right) // ["J", "Q"]

// MARK: - SPECIFIC PARSING
//[0-9]+[0-9]+[0-9]*.(MG) | FIND DOSAGES
let dosages = matches(for: "[0-9]+[0-9]+[0-9]*.(MG)", in: string)
print(dosages)
