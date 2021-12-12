// 1342. Number of Steps to Reduce a Number to Zero

final class Solution1342 {
    func numberOfSteps(_ num: Int) -> Int {
        var temp = num
        var stepCount = 0
        while temp > 0 {
            if temp%2 == 0 {
                temp = temp/2
            } else {
                temp -= 1
            }
            stepCount += 1
        }
        return stepCount
    }
}

/*
 // Recursive version
 final class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        if num == 0 {
            return 0
        } else if num%2 == 0 {
            return numberOfSteps(numberOfSteps(num/2)) + 1
        } else {
            return numberOfSteps(numberOfSteps(num-1)) + 1
        }
    }
}
*/
