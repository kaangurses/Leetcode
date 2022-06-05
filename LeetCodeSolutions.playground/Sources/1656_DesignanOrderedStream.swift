// 1656. Design an Ordered Stream

final class OrderedStream {
    private var stream: [String] = [String]()
    private var ptr: Int = 0

    init(_ n: Int) {
        self.stream = Array(repeating: "", count: n)
    }

    func insert(_ idKey: Int, _ value: String) -> [String] {
        stream[idKey-1] = value
        var result: [String] = []
        for idx in ptr..<stream.count {
            if stream[idx].isEmpty {
                ptr = idx
                break
            }
            result.append(stream[idx])
            ptr += 1
        }
        return result
    }
}

/**
 * Your OrderedStream object will be instantiated and called as such:
 * let obj = OrderedStream(n)
 * let ret_1: [String] = obj.insert(idKey, value)
 */
