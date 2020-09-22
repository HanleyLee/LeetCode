//5-从尾到头打印链表
/*
 题目：输入一个链表的头节点，从尾到头打印出每个节点的值。
 */

import UIKit
import Foundation

class LinkListNode {
    var value: Int!
    var next: LinkListNode?
    init(value: Int, next: LinkListNode?) {
        self.value = value
        self.next = next
    }
}

//循环方式：
func printListReversingly_Iteratively(header: LinkListNode) {
    var stack = Array<LinkListNode>()
    //链表头进栈
    stack.append(header)
    var nextNode = header.next
    //各个节点进栈
    while nextNode != nil {
        stack.append(nextNode!)
        nextNode = nextNode?.next
    }
    //出栈
    while stack.count > 0 {
        nextNode = stack.removeLast()
        print("node.value = \(nextNode!.value!)")
    }
}

//递归：
func printNode(header: LinkListNode) {
    if header.next != nil {
        printNode(header: header.next!)
    }
    print("node.value = \(header.value!)")
}


//测试：
func testNodes() -> [LinkListNode] {
    var testNodes = [LinkListNode]()
    
    let header1 = LinkListNode(value: 0, next: nil);
    var node = header1
    for i in 10...20 {
        let newNode = LinkListNode(value: i, next: nil)
        node.next = newNode;
        node = newNode;
    }
    
    testNodes.append(header1)
    
    let header2 = LinkListNode(value: 0, next: nil);
    testNodes.append(header2)
    return testNodes
}

var nodeHeaders = testNodes()

for header in nodeHeaders {
    printListReversingly_Iteratively(header: header)
    print("\n")
}

for header in nodeHeaders {
    printNode(header: header)
    print("\n")
}



