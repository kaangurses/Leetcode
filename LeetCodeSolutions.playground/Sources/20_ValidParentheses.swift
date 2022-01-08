// 20. Valid Parentheses

final class Solution20 {
    func isValid(_ s: String) -> Bool {
        var openingArray = [String]()
        for char in s {
            let bracket = "\(char)"
            if bracket.isOpening {
                openingArray.append(bracket)
            } else if let lastChar = openingArray.last {
                if bracket == reverseChar(lastChar) {
                    openingArray.removeLast()
                } else {
                    return false
                }
            } else {
                return false
            }
        }
        
        return openingArray.isEmpty
    }
    
    func reverseChar(_ char: String) -> String {
        switch char {
        case "(":
            return ")"
        case "[":
            return "]"
        case "{":
            return "}"
        default:
            return ""
        }
    }
}

extension String {
    var isOpening: Bool {
        return self == "(" || self == "{" || self == "["
    }
}
