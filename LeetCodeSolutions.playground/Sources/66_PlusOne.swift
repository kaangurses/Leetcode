// 66. Plus One

final class Solution66 {
    func plusOne(_ digits: [Int]) -> [Int] {
        var array = digits
        var hasReminder = false
        for idx in (0..<digits.count).reversed() {
            array[idx] = (array[idx] + 1) % 10
            hasReminder = array[idx] == 0
            if array[idx] != 0 {
                break
            }
        }
        if hasReminder {
            array.insert(1, at: 0)
        }
        return array
    }
}
