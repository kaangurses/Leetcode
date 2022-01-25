// 1282. Group the People Given the Group Size They Belong To

final class Solution1282 {
    func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
        var dict = [Int: [Int]]()

        for idx in 0..<groupSizes.count {
            if dict[groupSizes[idx]] == nil {
                dict[groupSizes[idx]] = [idx]
            } else {
                dict[groupSizes[idx]]?.append(idx)
            }

        }

        var result = [[Int]]()

        for (key, value) in dict {
            var dictValue = value

            while dictValue.count > 0 {
                var tempArray: [Int] = []
                for _ in 0..<key {
                    tempArray.append(dictValue.removeFirst())
                }
                result.append(tempArray)
            }
        }
        return result
    }
}
