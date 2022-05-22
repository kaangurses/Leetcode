import CoreFoundation
@discardableResult public func measure(label: String? = nil, tests: Int = 1, printResults output: Bool = true, setup: @escaping () -> Void = { return }, _ block: @escaping () -> Void) -> Double {

    guard tests > 0 else { fatalError("Number of tests must be greater than 0") }

    var avgExecutionTime : CFAbsoluteTime = 0
    for _ in 1...tests {
        setup()
        let start = CFAbsoluteTimeGetCurrent()
        block()
        let end = CFAbsoluteTimeGetCurrent()
        avgExecutionTime += end - start
    }

    avgExecutionTime /= CFAbsoluteTime(tests)

    if output {
        let avgTimeStr = "\(avgExecutionTime)".replacingOccurrences(of: "e|E", with: " × 10^", options: .regularExpression, range: nil)

        if let label = label {
            print(label, "▿")
            print("\tExecution time: \(avgTimeStr)s")
            print("\tNumber of tests: \(tests)\n")
        } else {
            print("Execution time: \(avgTimeStr)s")
            print("Number of tests: \(tests)\n")
        }
    }

    return avgExecutionTime
}


final class Solution {
    func reverseWords(_ s: String) -> String {
        let words = s.split(separator: " ")
        var finalWord = ""
        for word in words {
            finalWord.append(String(word.reversed()))
            finalWord.append(" ")
        }
        finalWord.removeLast()
        return finalWord
    }

    func reverseWords2(_ s: String) -> String {
        s.components(separatedBy: " ").map { String($0.reversed()) }.joined(separator: " ")
    }

    func reverseWords3(_ s: String) -> String {
        s.split(separator: " ").map { String($0.reversed()) }.joined(separator: " ")
    }
}

Solution().reverseWords("Let's take LeetCode contest")
Solution().reverseWords2("Let's take LeetCode contest")

measure {
    Solution().reverseWords("Let's take LeetCode contest")
}

measure {
    Solution().reverseWords2("Let's take LeetCode contest")
}

measure {
    Solution().reverseWords3("Let's take LeetCode contest")
}
