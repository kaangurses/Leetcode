// 260. Single Number III

final class Solution260 {
    func singleNumber(_ nums: [Int]) -> [Int] {
        var dict = [Int: Int]()
        var result = [Int]()
        for num in nums {
            dict[num] = (dict[num] ?? 0) + 1
        }
        for (key,val) in dict.enumerated() {
            if val.value == 1 {
                result.append(key)
            }
        }
        return result
    }
}
