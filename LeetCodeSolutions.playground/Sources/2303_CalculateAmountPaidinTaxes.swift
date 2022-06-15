// 2303. Calculate Amount Paid in Taxes

final class Solution {
    func calculateTax(_ brackets: [[Int]], _ income: Int) -> Double {
        if income == 0 {
            return 0
        }
        var income = income
        var tax: Int = 0
        var previousLimit = 0
        for bracket in brackets {
            let amount = bracket[0]-previousLimit
            let taxRate = bracket[1]
            if amount >= income {
                tax += income*taxRate
                break
            } else {
                tax += amount*taxRate
                income -= amount
            }
            previousLimit = bracket[0]

        }
        return Double(tax)/100
    }
}
