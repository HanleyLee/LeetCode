/**
 # 翻转链表

 定义一个函数，输入一个链表的头节点，反转该链表并输出反转后链表的头节点。

 ## 示例

 ```
 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
 ```

 ## 限制

 `0 <= 节点个数 <= 5000`

 ## Official Link

 <https://leetcode-cn.com/problems/fan-zhuan-lian-biao-lcof/>

 ---
 */

import Foundation

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil { return head }

        var headNode = head
        var reverseNode: ListNode?
        var preNode: ListNode?

        while headNode != nil {

            if headNode?.next == nil {  // 结束标志
                reverseNode = headNode
            }

            let temp = headNode?.next

            headNode?.next = preNode

            preNode = headNode
            headNode = temp
        }

        return reverseNode
//        var arr = [Int]()
//        var currentNode = head
//        var resNode: ListNode?
//
//        while currentNode != nil {
//            arr.append(currentNode!.val)
//            currentNode = currentNode?.next
//        }
//
//        var helpNode: ListNode?
//        resNode?.val = arr.last!
//        resNode?.next = helpNode
//
//        for i in arr.reversed() {
//            helpNode?.next = helpNode
//            helpNode = ListNode(i)
//        }
//
//        return helpNode
    }
}

var listNode1 = ListNode(1)
var listNode2 = ListNode(2)
var listNode3 = ListNode(3)
var listNode4 = ListNode(4)
var listNode5 = ListNode(5)

listNode1.next = listNode2
listNode2.next = listNode3
listNode3.next = listNode4
listNode4.next = listNode5

Solution().reverseList(listNode1)
