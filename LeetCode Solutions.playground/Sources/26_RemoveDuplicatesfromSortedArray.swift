// 26. Remove Duplicates from Sorted Array

final class Solution26 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var filteredArray: [Int] = []
        for num in nums {
            if !filteredArray.contains(num) {
                filteredArray.append(num)
            }
        }
        nums = filteredArray
        return nums.count
    }
}
