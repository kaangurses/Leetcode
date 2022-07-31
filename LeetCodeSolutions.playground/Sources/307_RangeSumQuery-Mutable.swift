// 307. Range Sum Query - Mutable

final class NumArray {
    private var nums: [Int]
    init(_ nums: [Int]) {
        self.nums = nums
    }

    func update(_ index: Int, _ val: Int) {
        nums[index] = val
    }

    func sumRange(_ left: Int, _ right: Int) -> Int {
        (left...right).reduce(into: 0) { $0 += nums[$1] }
    }
}
