// 807. Max Increase to Keep City Skyline

final class Solution807 {
    func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
        var rowMaxes = Array(repeating: 0, count: grid.count)
        var columnMaxes = Array(repeating: 0, count: grid.count)

        for idx in 0..<grid.count {
            for jdx in 0..<grid.count {
                if rowMaxes[idx] < grid[idx][jdx] {
                    rowMaxes[idx] = grid[idx][jdx]
                }
                if columnMaxes[jdx] < grid[idx][jdx] {
                    columnMaxes[jdx] = grid[idx][jdx]
                }
            }
        }

        var totalIncrease = 0

        for idx in 0..<grid.count {
            for jdx in 0..<grid.count {
                if rowMaxes[idx] == grid[idx][jdx] || columnMaxes[jdx] == grid[idx][jdx] {
                    continue
                }
                if rowMaxes[idx] < columnMaxes[jdx] {
                    totalIncrease += rowMaxes[idx]-grid[idx][jdx]
                } else {
                    totalIncrease += columnMaxes[jdx]-grid[idx][jdx]
                }
            }
        }

        return totalIncrease
    }
}
