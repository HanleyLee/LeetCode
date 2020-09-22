//: Playground - noun: a place where people can play

// 反转链表 （改变链表结构）

// ListNode
class ListNode {
  var val: Int = 0
  var next: ListNode? = nil
}

func reverseListNode(head: ListNode?) -> ListNode? {
  
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
}


// Test
func provideTestNode() -> ListNode {
  
  let node1 = ListNode()
  node1.val = 1
  
  let node2 = ListNode()
  node2.val = 2
  node1.next = node2
  
  let node3 = ListNode()
  node3.val = 3
  node2.next = node3
  
  let node4 = ListNode()
  node4.val = 4
  node3.next = node4
  
  return node1
}

func debugNode(head: ListNode) {
  var node = head
  while node.next != nil {
    print(node.val)
    node = node.next!
  }
  
  print(node.val)
  print(node.next?.val)
  print(node.next?.next?.val)
}


// Debug

let revseredNode = reverseListNode(head: provideTestNode())
debugNode(head: revseredNode!)

