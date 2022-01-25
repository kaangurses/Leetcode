import Foundation

final class Solution {
    func countPoints(_ points: [[Int]], _ queries: [[Int]]) -> [Int] {
        var result = Array(repeating: 0, count: queries.count)
        for idx in 0..<queries.count {
            let query = queries[idx]
            for point in points {
                let xDistance = query[0]-point[0]
                let yDistance = query[1]-point[1]
                let powerOfDistance = (xDistance*xDistance)+(yDistance*yDistance)
                let distance = sqrt(Double(powerOfDistance))
                if distance<=Double(query[2]) {
                    result[idx] += 1
                }
            }
        }

        return result
    }
}

Solution().countPoints([[1,3],[3,3],[5,3],[2,2]], [[2,3,1],[4,3,1],[1,1,2]])
