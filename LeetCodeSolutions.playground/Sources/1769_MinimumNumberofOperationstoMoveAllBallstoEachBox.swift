// 1769. Minimum Number of Operations to Move All Balls to Each Box

final class Solution1769 {
    func minOperations(_ boxes: String) -> [Int] {
        var result = [Int]()
        var oneIndexes = [Int]()
        var i = 0
        for char in boxes {
            if char == "1" {
                oneIndexes.append(i)
            }
            i += 1
        }

        for idx in 0..<boxes.count {
            var moves = 0
            for jdx in oneIndexes {
                moves += abs((idx-jdx))
            }
            result.append(moves)
        }

        return result
    }
}
