// 542. 01 Matrix

final class Solution542 {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        let m = mat.count
        let n = mat[0].count
        let maxValue = m+n
        var mins = [[Int]](repeating: [Int](repeating: maxValue, count: n), count: m)

        for i in 0..<m {
            for j in 0..<n {
                if mat[i][j] == 0 {
                    mins[i][j] = 0
                    continue
                }
                if i == 0 && j != 0 {
                    mins[i][j] = min(mins[i][j], mins[i][j-1]+1)
                } else if j == 0 && i != 0 {
                    mins[i][j] = min(mins[i][j], mins[i-1][j]+1)
                } else if i != 0 && j != 0 {
                    mins[i][j] = min(mins[i][j],  (min(mins[i-1][j], mins[i][j-1])+1))
                }
            }
        }

        for i in (0..<m).reversed() {
            for j in (0..<n).reversed() {
                if i == m - 1 && j != n - 1 {
                    mins[i][j] = min(mins[i][j], mins[i][j+1] + 1)
                } else if j == n - 1 && i != m - 1 {
                    mins[i][j] = min(mins[i][j], mins[i+1][j] + 1)
                } else if i != m - 1 && j != n - 1 {
                    mins[i][j] = min(mins[i][j], min(mins[i+1][j], mins[i][j+1]) + 1)
                }
            }
        }
        return mins
    }
}
