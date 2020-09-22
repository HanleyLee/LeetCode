/*:
 # 合并两个排序的链表

 输入两个递增排序的链表，合并这两个链表并使新链表中的节点仍然是递增排序的。

 ## 示例

 ```
 输入：1->2->4, 1->3->4
 输出：1->1->2->3->4->4
 ```
 
 ## 限制

 `0 <= 链表长度 <= 1000`

 ## Official Link

 <https://leetcode-cn.com/problems/he-bing-liang-ge-pai-xu-de-lian-biao-lcof/>

 ---
 */

import Foundation


//: ## 递归解法
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil && l2 == nil {
            return nil
        }

        if l1 == nil || l2 == nil {
            return l1 == nil ? l2 : l1
        }

        var newNode: ListNode? = nil

        if l1!.val <= l2!.val {
            newNode = l1
            newNode?.next = mergeTwoLists(l1?.next, l2)
        } else {
            newNode = l2
            newNode?.next = mergeTwoLists(l1, l2?.next)
        }
        return newNode
    }
}

//: ## 迭代解法
class Solution1 {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var newNode: ListNode? // 最终要输出的新 node
        var node1 = l1 // 过程中要对输入的 node 进行重新赋值, 因此构造一个新的 等价 node
        var node2 = l2
        if node1 == nil {
            return node2
        } else if node2 == nil {
            return node1
        }

        if node1!.val < node2!.val {
            newNode = node1
            node1 = node1!.next
        } else {
            newNode = node2
            node2 = node2?.next
        }

        var tempNode = newNode // 辅助型 node
        while node1 != nil && node2 != nil {
            if node1!.val < node2!.val {
                tempNode?.next = node1
                node1 = node1?.next
            } else {
                tempNode?.next = node2
                node2 = node2?.next
            }
            tempNode = tempNode?.next
        }

        if node1 == nil && node2 != nil {
            tempNode?.next = node2
        } else {
            tempNode?.next = node1
        }

        return newNode

    }
}

var node1 = ListNode(1)
var node2 = ListNode(2)
var node3 = ListNode(3)
var node4 = ListNode(4)
var node5 = ListNode(5)
var node6 = ListNode(6)

node1.next = node2
node2.next = node3
node3.next = node5

node4.next = node6

let new = Solution().mergeTwoLists(node1, node4)
new?.next?.next?.next?.val


