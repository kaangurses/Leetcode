// 67. Add Binary

final class Solution67 {
    func addBinary(_ a: String, _ b: String) -> String {
        var a = Array(a)
        var b = Array(b)
        let count = max(a.count, b.count)
        var hasRemaining: Bool = false
        var result = ""

        for _ in 0..<count {
            let first = a.isEmpty ? "0" : a.removeLast()
            let second = b.isEmpty ? "0" : b.removeLast()

            if first == "1" && second == "1" {
                if hasRemaining {
                    result = "1" + result
                } else {
                    result = "0" + result
                }
                hasRemaining = true
            } else if (first == "1" && second == "0") ||
                        (first == "0" && second == "1") {
                if hasRemaining {
                    result = "0" + result
                } else {
                    result = "1" + result
                }
            } else {
                if hasRemaining {
                    result = "1" + result
                    hasRemaining = false
                } else {
                    result = "0" + result
                }
            }
        }

        if hasRemaining {
            result = "1" + result
        }

        return result
    }
}
