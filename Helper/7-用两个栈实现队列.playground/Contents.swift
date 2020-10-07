/*
 7-用两个栈实现队列
 题目：用两个栈实现一个队列。队列的声明如下，请实现它的两个函数appendTail和deleteHead,分别完成在队列尾部插入节点和在队友头部删除节点功能
 */

import UIKit

class Stack<T> {
    private var items = [T]()
    var count: Int {
        get {
            return items.count
        }
    }
    
    func push(t:T) {
        items.append(t)
    }
    
    func pop() -> T? {
        return items.popLast()
    }
    
}

class Queue<T> {
    private var stack1 = Stack<T>()
    private var stack2 = Stack<T>()
    
    func appendTail(t:T) {
        stack1.push(t: t)
    }
    
    func deleteHead() -> T? {
        if stack2.count == 0 {
            while let item = stack1.pop() {
                stack2.push(t: item)
            }
        }
        return stack2.pop()
    }
}



let queue = Queue<Int>()

queue.appendTail(t: 1);
queue.appendTail(t: 2);
queue.appendTail(t: 3);

let a = queue.deleteHead()

queue.appendTail(t: 4)

let b = queue.deleteHead()
let c = queue.deleteHead()
let d = queue.deleteHead()
let e = queue.deleteHead()

