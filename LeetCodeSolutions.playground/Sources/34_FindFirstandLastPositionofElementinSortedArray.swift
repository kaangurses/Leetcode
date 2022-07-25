// 34. Find First and Last Position of Element in Sorted Array

final class Solution34 {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        if let firstIdx = nums.firstIndex(of: target),
            let lastIdx = nums.lastIndex(of: target) {
                return [firstIdx, lastIdx]
        }
        return [-1, -1]
    }
}

/*
final class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var counter = 0
        var firstIdx = -1
        for num in nums where num <= target {
            if num == target, firstIdx == -1 {
                firstIdx = counter
            }
            counter += 1
        }
        if firstIdx != -1 {
            return [firstIdx, counter-1]
        }
        return [-1, -1]
    }
}
*/
