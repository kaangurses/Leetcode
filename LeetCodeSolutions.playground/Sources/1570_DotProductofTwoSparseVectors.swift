final class SparseVector {
    private(set) var nums: [Int] = [Int]()
    init(_ nums: [Int]) {
        self.nums = nums
    }

    // Return the dotProduct of two sparse vectors
    func dotProduct(_ vec: SparseVector) -> Int {
        Array(0..<nums.count).reduce(0) { result, idx -> Int in
            result+(nums[idx]*vec.nums[idx])
        }
    }
}
