// 21. Merge Two Sorted Lists

class ListNode {
    var val: Int
    var next: ListNode?
    init() { self.val = 0; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

final class Solution21 {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var temp1 = l1
        var temp2 = l2
        var temp3: ListNode? = nil
        var currentNode: ListNode? = nil
        while temp1 != nil || temp2 != nil {
            var newNode: ListNode? = nil
            if let tmp1 = temp1 {
                if let tmp2 = temp2 {
                    if tmp1.val > tmp2.val {
                        newNode = ListNode(tmp2.val)
                        temp2 = tmp2.next
                    } else {
                        newNode = ListNode(tmp1.val)
                        temp1 = temp1?.next
                    }
                } else {
                    newNode = ListNode(tmp1.val)
                    temp1 = temp1?.next
                }
            } else if let tmp2 = temp2 {
                newNode = ListNode(tmp2.val)
                temp2 = tmp2.next
            }
            
            if temp3 == nil {
                temp3 = newNode
                currentNode = newNode
            } else {
                currentNode?.next = newNode
                currentNode = newNode
            }
        }
        return temp3
    }
}
