// 695. Max Area of Island

final class Solution695 {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var maxIslandCount = 0
        var area = grid
        for idx in 0..<grid.count {
            for jdx in 0..<grid[idx].count {
                if area[idx][jdx] == 1 {
                    let currentCount = fillArea(&area, idx, jdx)
                    maxIslandCount = maxIslandCount<currentCount ? currentCount : maxIslandCount
                }
            }
        }

        return maxIslandCount
    }

    private func fillArea(_ area: inout [[Int]], _ idx: Int, _ jdx: Int) -> Int {
        if idx < 0 || idx >= area.count || jdx < 0 || jdx >= area[0].count || area[idx][jdx] != 1 { return 0 }
        area[idx][jdx] = 2
        var currentCount = 1
        currentCount += fillArea(&area, idx-1, jdx)
        currentCount += fillArea(&area, idx, jdx-1)
        currentCount += fillArea(&area, idx+1, jdx)
        currentCount += fillArea(&area, idx, jdx+1)
        return currentCount
    }
}
