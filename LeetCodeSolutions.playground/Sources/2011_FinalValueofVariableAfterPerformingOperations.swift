// 2011. Final Value of Variable After Performing Operations

final class Solution2011 {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var result: Int = 0
        for operation in operations {
            switch operation {
                case "X++", "++X":
                result += 1
                case "X--", "--X":
                result -= 1
                default: break
            }
        }
        return result
    }
}
