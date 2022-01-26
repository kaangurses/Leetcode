// 1221. Split a String in Balanced Strings

final class Solution1221 {
    func balancedStringSplit(_ s: String) -> Int {
        var splitCount = 0
        var currentChar = ""
        var currentCount = 0

        for char in s {
            if currentChar.isEmpty {
                currentChar = String(char)
                currentCount = 1
            } else if String(char) == currentChar {
                currentCount += 1
            } else {
                currentCount -= 1
            }
            if currentCount == 0 {
                splitCount += 1
            }
        }

        return splitCount
    }
}
