// 739. Daily Temperatures

final class Solution739 {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var answer = Array(repeating: 0, count: temperatures.count)
        
        for idx in 0..<temperatures.count {
            for jdx in idx..<temperatures.count {
                if temperatures[idx] < temperatures[jdx] {
                    answer[idx] = jdx-idx
                    break
                }
            }
        }
        return answer
    }
}
