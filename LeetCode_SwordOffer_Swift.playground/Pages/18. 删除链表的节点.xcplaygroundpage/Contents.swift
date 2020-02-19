/**
 # 删除链表的节点

 给定单向链表的头指针和一个要删除的节点的值，定义一个函数删除该节点。

 返回删除后的链表的头节点。

 ## 示例

 ```
 输入: head = [4,5,1,9], val = 5
 输出: [4,1,9]
 解释: 给定你链表中值为 5 的第二个节点，那么在调用了你的函数之后，该链表应变为 4 -> 1 -> 9.
 ```

 ```
 输入: head = [4,5,1,9], val = 1
 输出: [4,5,9]
 解释: 给定你链表中值为 1 的第三个节点，那么在调用了你的函数之后，该链表应变为 4 -> 5 -> 9.
 ```

 ## 说明

 - 题目保证链表中节点的值互不相同
 - 若使用 C 或 C++ 语言，你不需要 free 或 delete 被删除的节点
 
 ## Official Link

 <https://leetcode-cn.com/problems/shan-chu-lian-biao-de-jie-dian-lcof/>

 ---
 */

import Foundation

class Solution {
    func deleteNode(_ head: ListNode?, _ val: Int) -> ListNode? {
        var currentNode = head
        var flexibleNode = currentNode
        if flexibleNode?.val == val { // 目标node在第一个位置
            currentNode = currentNode?.next
            return currentNode
        }
        while flexibleNode?.next != nil {
            if flexibleNode?.next?.val == val {
                if flexibleNode?.next?.next != nil { // 目标 node不在最后一位
                    flexibleNode?.next = flexibleNode?.next?.next
                } else { // 目标 node 在最后一位
                    flexibleNode?.next = nil
                }
                return currentNode
            }
            flexibleNode = flexibleNode?.next
        }
        return head // 只有一个 node 情况下且该 node 不是目标 node
    }
}


var listNode1 = ListNode(1)
var listNode2 = ListNode(2)
var listNode3 = ListNode(3)
var listNode4 = ListNode(4)
var listNode5 = ListNode(5)
var listNode6 = ListNode(6)

listNode1.next = listNode2
listNode2.next = listNode3
listNode3.next = listNode4
listNode4.next = listNode5
listNode5.next = listNode6


Solution().deleteNode(listNode1, 6)
print(listNode4.next?.val)

//print(listNode1.next?.next?.val)

