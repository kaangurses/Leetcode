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


import XCTest

final class Tests: XCTestCase {
    func test0() {
        let bms = BookMyShow(1, 2)
        XCTAssertTrue(bms.scatter(2, 0))
    }

    func test1() {
        let bms = BookMyShow(2, 5) // There are 2 rows with 5 seats each
        XCTAssertEqual(bms.gather(4, 0), [0,0])
        XCTAssertEqual(bms.gather(2, 0), [])
        XCTAssertTrue(bms.scatter(5, 1))
        XCTAssertFalse(bms.scatter(5, 1))
    }

    func test2() {
        let bm = BookMyShow(3, 999999999)
        XCTAssertTrue(bm.scatter(1000000000, 2))
        XCTAssertEqual(bm.gather(999999999, 2), [2, 0])
        XCTAssertEqual(bm.gather(999999999, 2), [])
        XCTAssertEqual(bm.gather(999999999, 2), [])
    }

    func test3() {
        let bm = BookMyShow(5, 9)
        XCTAssertEqual(bm.gather(10, 1), [])
        XCTAssertTrue(bm.scatter(3, 3))
        XCTAssertEqual(bm.gather(9, 1), [1, 0])
        XCTAssertEqual(bm.gather(10, 2), [])
        XCTAssertEqual(bm.gather(2, 0), [0, 3])
    }

    func test4() {
        let bm = BookMyShow(5, 3)
        XCTAssertTrue(bm.scatter(3, 2))
        XCTAssertEqual(bm.gather(10, 2), [])
        XCTAssertEqual(bm.gather(1, 1), [1, 0])
        XCTAssertEqual(bm.gather(9, 4), [])
    }

    func test5() {
        let bm = BookMyShow(19, 9)
        XCTAssertEqual(bm.gather(38, 8), [])
        XCTAssertEqual(bm.gather(27, 3), [])
        XCTAssertTrue(bm.scatter(36, 14))
        XCTAssertFalse(bm.scatter(46, 2))
        XCTAssertEqual(bm.gather(12, 5), [])
        XCTAssertTrue(bm.scatter(12, 12))
        XCTAssertTrue(bm.scatter(43, 12))
        XCTAssertEqual(bm.gather(30, 5), [])
        XCTAssertFalse(bm.scatter(29, 6))
        XCTAssertTrue(bm.scatter(37, 18))
        XCTAssertEqual(bm.gather(6, 16), [14, 2])
        XCTAssertFalse(bm.scatter(27, 4))
        XCTAssertEqual(bm.gather(4, 17), [15, 0])
        XCTAssertFalse(bm.scatter(11, 5))
        XCTAssertEqual(bm.gather(22, 8), [])
    }
}

//Tests.defaultTestSuite.run()
