// 202. Happy Number

final class Solution202 {
    func isHappy(_ n: Int) -> Bool {
        var calculatedArray: [Int] = []
        var temp = n
        while temp != 1 && !calculatedArray.contains(temp) {
            calculatedArray.append(temp)
            temp = calculate(n: temp)
            
        }
        return temp == 1
    }
    
    private func calculate(n: Int) -> Int {
        var arr = [Int]()
        var temp = n
        while temp != 0 {
            arr.append(temp%10)
            temp /= 10
        }
        let total = arr.reduce(0) { (result, val) -> Int in
            result + val*val
        }
        return total
    }
}
