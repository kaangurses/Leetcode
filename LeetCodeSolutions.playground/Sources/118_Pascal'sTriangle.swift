// 118. Pascal's Triangle

final class Solution118 {
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 1 {
            return [[1]]
        } else if numRows == 2 {
            return [[1], [1, 1]]
        }
        var result: [[Int]] = [[1], [1, 1]]
        for idx in 2..<numRows {
            result.append([])
            for jdx in 0...idx {
                if jdx == 0 || jdx == idx {
                    result[idx].append(1)
                } else {
                    result[idx].append(result[idx-1][jdx-1]+result[idx-1][jdx])
                }
            }
        }
        return result
    }
}
