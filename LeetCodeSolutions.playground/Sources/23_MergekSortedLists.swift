// 23. Merge k Sorted Lists

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

final class Solution23 {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        var intArray = [Int]()
        for head in lists {
            var currentNode = head
            while currentNode != nil {
                intArray.append(currentNode?.val ?? 0)
                currentNode = currentNode?.next
            }
        }
        let sortedArray = intArray.sorted(by: { $0 < $1 })

        var head: ListNode?
        var currentNode: ListNode?
        for integer in sortedArray {
            if head == nil {
                head = ListNode(integer)
                currentNode = head
            } else {
                let newNode = ListNode(integer)
                currentNode?.next = newNode
                currentNode = newNode
            }
        }

        return head
    }
}
