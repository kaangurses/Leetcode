// 994. Rotting Oranges

final class Solution994 {
    private var queue = [Orange]()

    func orangesRotting(_ grid: [[Int]]) -> Int {
        var grid = grid
        let rows = grid.count
        let columns = grid[0].count

        for i in 0..<rows {
            for j in 0..<columns {
                if grid[i][j] == 2 {
                    let orange = Orange(time: 0, coordinate: [i, j])
                    queue.append(orange)
                }
            }
        }

        if queue.isEmpty {
            for i in 0..<rows {
                for j in 0..<columns {
                    if grid[i][j] == 1 {
                        return -1
                    }
                }
            }
            return 0
        }

        var t: Orange = queue[0]
        while !queue.isEmpty {
            t = queue[0]
            if markRotting(&grid, t.coordinate[0] + 1, t.coordinate[1], rows, columns) {
                let o = Orange(time: t.time + 1, coordinate: [t.coordinate[0] + 1, t.coordinate[1]])
                queue.append(o)
            }
            if markRotting(&grid, t.coordinate[0] - 1, t.coordinate[1], rows, columns) {
                let o = Orange(time: t.time + 1, coordinate: [t.coordinate[0] - 1, t.coordinate[1]])
                queue.append(o)
            }
            if markRotting(&grid, t.coordinate[0], t.coordinate[1] + 1, rows, columns) {
                let o = Orange(time: t.time + 1, coordinate: [t.coordinate[0], t.coordinate[1] + 1])
                queue.append(o)
            }
            if markRotting(&grid, t.coordinate[0], t.coordinate[1] - 1, rows, columns) {
                let o = Orange(time: t.time + 1, coordinate: [t.coordinate[0], t.coordinate[1] - 1])
                queue.append(o)
            }
            queue.remove(at: 0)
        }

        for i in 0..<rows {
            for j in 0..<columns {
                if grid[i][j] == 1 {
                    return -1
                }
            }
        }

        return t.time
    }

    private func markRotting(_ grid: inout [[Int]], _ x: Int, _ y: Int, _ rows: Int, _ columns: Int) -> Bool {
        if x < 0 || x >= rows || y < 0 || y >= columns || grid[x][y] != 1 { return false }
         grid[x][y] = 2
         return true
    }

    private struct Orange {
        let time: Int
        let coordinate: [Int]
    }
}
