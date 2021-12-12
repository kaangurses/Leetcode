// 14. Longest Common Prefix

final class Solution14 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let firstStr = strs.first else { return "" }
        var prefix = ""
        for char in firstStr {
            prefix = prefix + String(char)
            if !strs.allSatisfy({ $0.hasPrefix(prefix) }) {
                prefix.removeLast()
                break
            }
            
        }
        return prefix
    }
}
