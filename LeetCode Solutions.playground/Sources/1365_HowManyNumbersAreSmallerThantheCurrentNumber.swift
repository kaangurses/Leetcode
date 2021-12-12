// 1365. How Many Numbers Are Smaller Than the Current Number

final class Solution1365 {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let sortedArray = nums.sorted()
        var result = [Int]()
        
        for i in 0..<sortedArray.count {
            result.append(sortedArray.firstIndex(of: nums[i]) ?? 0)
        }
        
        return result
    }
}
