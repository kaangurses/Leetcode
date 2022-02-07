// 19. Remove Nth Node From End of List

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
final class Solution19 {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummyNode: ListNode? = ListNode(0, head)

        var leftNode = dummyNode
        var rightNode = head
        for _ in 0..<n {
            rightNode = rightNode?.next
        }

        while rightNode != nil {
            leftNode = leftNode?.next
            rightNode = rightNode?.next
        }

        leftNode?.next = leftNode?.next?.next
        return dummyNode?.next
    }
}
