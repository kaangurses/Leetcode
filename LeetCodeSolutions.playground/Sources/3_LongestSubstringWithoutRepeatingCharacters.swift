// 3. Longest Substring Without Repeating Characters

final class Solution3 {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var longest = [Character]()
        var longestSize = 0
        for char in s {
            if longest.contains(char), let firstIdx = longest.firstIndex(of: char) {
                longest.removeSubrange(0...firstIdx)
            }
            longest.append(char)
            longestSize = max(longestSize, longest.count)
        }
        return longestSize
    }
}
