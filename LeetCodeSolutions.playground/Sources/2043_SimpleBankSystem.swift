// 2043. Simple Bank System

final class Bank {
    var balance: [Int]
    
    init(_ balance: [Int]) {
        self.balance = balance
    }
    
    func transfer(_ account1: Int, _ account2: Int, _ money: Int) -> Bool {
        let account1 = account1-1
        let account2 = account2-1
        guard checkAccountExist(account1),
              checkAccountExist(account2),
              balance[account1] >= money else { return false }
        balance[account1] -= money
        balance[account2] += money
        return true
    }
    
    func deposit(_ account: Int, _ money: Int) -> Bool {
        let account = account-1
        guard checkAccountExist(account) else { return false }
        balance[account] += money
        return true
    }
    
    func withdraw(_ account: Int, _ money: Int) -> Bool {
        let account = account-1
        guard checkAccountExist(account), balance[account] >= money else { return false }
        balance[account] -= money
        return true
    }
    
    func checkAccountExist(_ number: Int) -> Bool {
        balance.count > number
    }
}

/**
 * Your Bank object will be instantiated and called as such:
 * let obj = Bank(balance)
 * let ret_1: Bool = obj.transfer(account1, account2, money)
 * let ret_2: Bool = obj.deposit(account, money)
 * let ret_3: Bool = obj.withdraw(account, money)
 */
