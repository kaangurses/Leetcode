/*final class Solution {
    func longestPalindrome(_ s: String) -> String {
        var result = ""
        for idx in 0..<s.count {
            var left = idx
            var right = idx

            while left >= 0 && right < s.count && s[left] == s[right] {
                if result.count < right - left + 1 {
                    result = s[left..<right+1]
                }
                left -= 1
                right += 1
            }

            left = idx
            right = idx+1

            while left >= 0 && right < s.count && s[left] == s[right] {
                if result.count < right - left + 1 {
                    result = s[left..<right+1]
                }
                left -= 1
                right += 1
            }

            if result.count == s.count {
                return result
            }
        }

        return result
    }
}
*/
final class Solution2 {
    func longestPalindrome(_ s: String) -> String {
        if s.isEmpty { return s }

        let charArray = Array(s)
        var start = 0
        var end = 0

        for i in 0..<charArray.count-1 {

            //len1 for palindromes like 'racecar', where e in the middle is not a match anywhere else in the string
            let len1 = expandAroundCenter(charArray: charArray, left: i, right: i)

            //len2 for regular palindromes like 'abba' where the two halves of the word are matching
            let len2 = expandAroundCenter(charArray: charArray, left: i, right: i+1)
            let len = max(len1, len2)

            //if we find a palindrome greater than our current start and end indices, we adjust start and end to reflect the current, longest palindrome
            if (len > end - start) {
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



Solution2().longestPalindrome("abababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababa")

