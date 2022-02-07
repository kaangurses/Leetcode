// 5. Longest Palindromic Substring

final class Solution5 {
    func longestPalindrome(_ s: String) -> String {
        if s.isEmpty { return s }

        let charArray = Array(s)
        var start = 0
        var end = 0

        for i in 0..<charArray.count-1 {

            let len1 = expandAroundCenter(charArray: charArray, left: i, right: i)
            let len2 = expandAroundCenter(charArray: charArray, left: i, right: i+1)
            let len = max(len1, len2)

            if len > end - start {
                start = i - ((len-1) / 2)
                end = i + (len/2)
            }
            if start == 0 && end == s.count-1 {
                break
            }
        }
        return String(s[s.index(s.startIndex, offsetBy: start)...s.index(s.startIndex, offsetBy: end)])
    }

    private func expandAroundCenter(charArray: [Character], left: Int, right: Int) -> Int {
        var left = left
        var right = right
        //use left and right pointers, exit loop if we go out of bounds or if the word is not a palindrome anymore
        while (left >= 0 && right < charArray.count && charArray[left] == charArray[right]) {
            left -= 1
            right += 1
        }
        return right - left - 1
    }
}
