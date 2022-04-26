// Swift IndexingIterator refernence:
// https://developer.apple.com/documentation/swift/indexingiterator

final class PeekingIterator {
    private var arr: IndexingIterator<Array<Int>>
    private var temp: Int?

    init(_ arr: IndexingIterator<Array<Int>>) {
        self.arr = arr
        self.temp = self.arr.next()
    }

    func next() -> Int {
        defer { temp = arr.next() }
        return temp ?? 0
    }

    func peek() -> Int {
        temp ?? 0
    }

    func hasNext() -> Bool {
        temp != nil
    }
}


/**
 * Your PeekingIterator object will be instantiated and called as such:
 * let obj = PeekingIterator(arr)
 * let ret_1: Int = obj.next()
 * let ret_2: Int = obj.peek()
 * let ret_3: Bool = obj.hasNext()
 */
