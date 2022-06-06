// 2286. Booking Concert Tickets in Groups

final class BookMyShow {
    private var emptySeatCount: [Int]
    private var seatCount: Int
    private var totalCount: Int
    init(_ n: Int, _ m: Int) {
        emptySeatCount = [Int](repeating: m, count: n)
        seatCount = m
        totalCount = m*n
    }

    func gather(_ k: Int, _ maxRow: Int) -> [Int] {
        guard k<=totalCount && k<=seatCount else { return [] }
        let maxRow = maxRow > emptySeatCount.count-1 ? emptySeatCount.count-1 : maxRow
        for idx in 0...maxRow {
            if emptySeatCount[idx] >= k {
                let startingSeat = seatCount-emptySeatCount[idx]
                emptySeatCount[idx] -= k
                totalCount -= k
                return [idx,startingSeat]
            }
        }
        return []
    }

    func scatter(_ k: Int, _ maxRow: Int) -> Bool {
        guard k<=totalCount else { return false }
        if totalCount == k {
            if maxRow >= emptySeatCount.count-1 {
                totalCount = 0
                return true
            } else {
                return false
            }
        }
        let maxRow = maxRow > emptySeatCount.count-1 ? emptySeatCount.count-1 : maxRow
        var totalSeat = 0
        for idx in 0...maxRow {
            totalSeat += emptySeatCount[idx]
            if totalSeat >= k {
                updateEmptySeatCount(k)
                totalCount -= k
                return true
            }
        }
        return false
    }

    private func updateEmptySeatCount(_ k: Int) {
        var remainingSeatCount = k
        for idx in 0..<emptySeatCount.count {
            if remainingSeatCount>emptySeatCount[idx] {
                remainingSeatCount -= emptySeatCount[idx]
                emptySeatCount[idx] = 0
            } else {
                emptySeatCount[idx] = emptySeatCount[idx]-remainingSeatCount
                return
            }
        }
    }
}
