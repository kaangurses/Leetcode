// 167. Two Sum II - Input Array Is Sorted

final class Solution167 {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var first = 0
        var second = numbers.count-1
        while first<second {
            let number = numbers[first]+numbers[second]
            if number == target {
                return [first+1, second+1]
            }
            if number>target {
                second -= 1
            } else {
                first += 1
            }
        }

        return [-1, -1]
    }
}

/*
final class Solution167 {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for idx in 0..<numbers.count {
            let val = numbers[idx]
            let diff = target-val
            if let diffIdx = dict[diff] {
                return [diffIdx+1, idx+1]
            }
            dict[val] = idx
        }
        return [-1, -1]
    }
}

final class Solution167 {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        for i in 0..<numbers.count-1 {
            for j in i+1..<numbers.count {
                if numbers[i]+numbers[j] == target {
                    return [i+1, j+1]
                }
            }
        }

        return [-1, -1]
    }
}
*/
