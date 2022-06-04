// 2181. Merge Nodes in Between Zeros

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
final class Solution2181 {
    func mergeNodes(_ head: ListNode?) -> ListNode? {
        var currentNode: ListNode? = head?.next
        var currentTotal: Int = 0
        var resultHead: ListNode? = nil
        var resultCurrentNode: ListNode? = nil
        while currentNode != nil {
            if currentNode?.val == 0 {
                let newNode = ListNode(currentTotal)
                resultCurrentNode?.next = newNode
                resultCurrentNode = newNode
                if resultHead == nil {
                    resultHead = newNode
                }
                currentTotal = 0
            } else {
                currentTotal += currentNode?.val ?? 0
            }
            currentNode = currentNode?.next
        }

        return resultHead
    }
}
