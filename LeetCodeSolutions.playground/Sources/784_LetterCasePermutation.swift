// 784. Letter Case Permutation

final class Solution784 {
    private var result: [String] = []

    func letterCasePermutation(_ s: String) -> [String] {
        let chars = Array(s)
        permutation(0, "", chars)
        return result
    }

    private func permutation(_ index: Int, _ string: String, _ chars: [Character]) {
        if index == chars.count {
            result.append(string)
            return
        }

        let letter = chars[index]
        if letter.isNumber {
            permutation(index+1, string + String(letter), chars)
        } else {
            permutation(index+1, string + String(letter).uppercased(), chars)
            permutation(index+1, string + String(letter).lowercased(), chars)
        }
    }
}
