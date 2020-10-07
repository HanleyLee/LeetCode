//: Playground - noun: a place where people can play

// Node
class ListNode {
  var val: Int = 0
  var next: ListNode? = nil
  
  init(val: Int) {
    self.val = val
    self.next = nil
  }
}


// List
class List {
  var head: ListNode?
  var tail: ListNode?
  
  // 尾插
  func appendToTail(val: Int) {
    if tail == nil {
      tail = ListNode(val: val)
      head = tail
    } else {
      tail?.next = ListNode(val: val)
      tail = tail?.next
    }
  }
  
  // 头插
  func appendToHead(val: Int) {
    if head == nil {
      head = ListNode(val: val)
      tail = head
    } else {
      let temp = ListNode(val: val)
      temp.next = head
      head = temp
    }
  }
}

/*

/*给一个链表和一个值x，要求将链表中所有小于x的值放到左边，所有大于等于x的值放到右边。原链表的节点顺序不能变。
 例：1->5->3->2->4->2，给定x = 3。则我们要返回 1->2->2->5->3->4*/

func sort(head: ListNode?, x: Int) -> ListNode? {
  var node = head

  let leftStart = ListNode(val: 0)
  let rightStart = ListNode(val: 0)

  var left = leftStart
  var right = rightStart


  while node != nil {

    if node!.val < x {
      left.next = node
      left = node!
    } else {
      right.next = node
      right = node!
    }

    node = node!.next
  }

  right.next = nil
  left.next = rightStart.next

  return leftStart.next
}


// Test

let list = List()
list.appendToTail(val: 1)
list.appendToTail(val: 5)
list.appendToTail(val: 3)
list.appendToTail(val: 2)
list.appendToTail(val: 4)
list.appendToTail(val: 2)

var sortedList = sort(head: list.head, x: 3)
while sortedList != nil {
  print(sortedList?.val ?? -1)
  sortedList = sortedList?.next
}

*/



