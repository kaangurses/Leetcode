// 120. Triangle

final class Solution120 {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        var result = triangle

        for idx in 1..<triangle.count {
            for jdx in 0..<triangle[idx].count {
                if jdx == 0 {
                    result[idx][jdx] += result[idx-1][jdx]
                } else if jdx == triangle[idx].count-1 {
                    result[idx][jdx] += result[idx-1][jdx-1]
                } else {
                    result[idx][jdx] += min(result[idx-1][jdx-1], result[idx-1][jdx])
                }
            }
        }
        var minVal = Int.max

        for item in result[triangle.count-1] {
            if minVal > item {
                minVal = item
            }
        }
        return minVal
    }
}
