// 1678. Goal Parser Interpretation

import Foundation

final class Solution1678 {
    func interpret(_ command: String) -> String {
        let stringToArray = command.components(separatedBy: "()")
        let convertedStr = stringToArray.joined(separator: "o")
        let strArray = convertedStr.components(separatedBy: "(al)")
        return strArray.joined(separator: "al")
    }
}
