/*:
 # 用两个栈实现队列

 用两个栈实现一个队列。队列的声明如下，请实现它的两个函数 appendTail 和 deleteHead ，分别完成在队列尾部插入整数和在队列头部删除整数的功能。(若队列中没有元素，deleteHead 操作返回 -1 )

 ## 示例

 ```
 输入：["CQueue","appendTail","deleteHead","deleteHead"]
 [[],[3],[],[]]
 输出：[null,null,3,-1]
 ```

 ```
 输入：["CQueue","deleteHead","appendTail","appendTail","deleteHead","deleteHead"]
 [[],[],[5],[2],[],[]]
 输出：[null,-1,null,null,5,2]
 ```

 ## 提示

 - 1 <= values <= 10000
 - 最多会对 appendTail、deleteHead 进行 10000 次调用

 ## Official Link

 <https://leetcode-cn.com/problems/yong-liang-ge-zhan-shi-xian-dui-lie-lcof/>

 ---
 */
import Foundation

class CQueue {

    var pushStack: [Int] = []
    var popStack: [Int] = []

    init() { }

    func appendTail(_ value: Int) {
        pushStack.append(value)
    }

    func deleteHead() -> Int {
        if pushStack.count == 0 && popStack.count == 0 {
            return -1
        } else if popStack.count == 0 {
            for i in pushStack.reversed() {
                popStack.append(i)
            }
            pushStack.removeAll()
        }
        return popStack.removeLast()
    }
}


let obj = CQueue()
obj.appendTail(2)
obj.deleteHead()

