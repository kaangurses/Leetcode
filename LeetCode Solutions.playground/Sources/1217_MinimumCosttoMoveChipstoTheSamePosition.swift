// 1217. Minimum Cost to Move Chips to The Same Position

final class Solution1217 {
    func minCostToMoveChips(_ position: [Int]) -> Int {
        var oddCount = 0
        var evenCount = 0

        for pos in position {
            if pos % 2 == 0 {
                evenCount += 1
            } else {
                oddCount += 1
            }
        }

        if evenCount == 0 || oddCount == 0 {
            return 0
        } else if evenCount > oddCount {
            return oddCount
        } else {
            return evenCount
        }
    }
}
