

import Cocoa

func matches(for regex: String, in text: String) -> [String] {

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


// EXAMPLE
let string = """
sildenafil acetate 50 MG Oral Tablet [Viagra]
"""

// FIND FULL BASIC NAME
let matched = matches(for: "([^\\s]+)", in: string)

// find first integer (the dosage)
func getFirstIntegerIndex() -> Int {
    for (index, element) in matched.enumerated() {
        // if a number split aray in half -> name, dosage
        print("Item \(index): \(element)")

        let num = Int(element)
        if num != nil {
            print("Valid Integer", index)
            return index
        }
    }
    return 0
}


extension Array {
    func split() -> (left: [Element], right: [Element]) {
        let ct = self.count
        let half = ct / 2
        let leftSplit = self[0 ..< half - 1]
        let rightSplit = self[getFirstIntegerIndex() ..< ct]
        return (left: Array(leftSplit), right: Array(rightSplit))
    }
}



let deck = matched

let splitDeck = deck.split()

print(splitDeck.left) // ["J", "Q"]
print(splitDeck.right) // ["K", "A"]

//[0-9]+[0-9]+[0-9]*.(MG)
let dosages = matches(for: "[0-9]+[0-9]+[0-9]*.(MG)", in: string)
