/*:
 # 包含 min 函数的栈

 定义栈的数据结构，请在该类型中实现一个能够得到栈的最小元素的 min 函数在该栈中，调用 min、push 及 pop 的时间复杂度都是 O(1)。

 ## 示例

 ```
 MinStack minStack = new MinStack();
 minStack.push(-2);
 minStack.push(0);
 minStack.push(-3);
 minStack.min();   --> 返回 -3.
 minStack.pop();
 minStack.top();      --> 返回 0.
 minStack.min();   --> 返回 -2.
 ```

 ## 提示

 - `各函数的调用总次数不超过 20000 次`
 
 ## Official Link

 <https://leetcode-cn.com/problems/bao-han-minhan-shu-de-zhan-lcof/>

 ---
 */

import Foundation

/**
 使用两个栈, 一个栈(元素栈)正常存储, 另一个栈(最小值栈)只存储比最小值栈栈顶更小的值.

 调用 `min` 方法时, 返回 `最小值栈` 的最后一个元素
 调用 `pop` 方法是, 两个栈都删除最后一个元素
 */
class MinStack {

    var dataArr: [Int]
    var minArr: [Int]

    init() {
        self.dataArr = []
        self.minArr = []
    }

    func push(_ x: Int) {
        dataArr.append(x)

        if minArr.count > 0 { // 将新的 push 的值与最小值栈的顶部值进行比较
            if x < minArr.last! {
                minArr.append(x)
            } else {
                minArr.append(minArr.last!)
            }
        } else { // 当最小栈目前没有值时
            minArr.append(x)
        }
    }

    func pop() {
        dataArr.removeLast()
        minArr.removeLast()
    }

    func top() -> Int {
        return dataArr.last!
    }

    func min() -> Int {
        if minArr.count > 0 {
            return minArr.last!
        }
        fatalError()
    }
}

let object = MinStack()

object.push(-2)
object.push(0)
object.push(-3)
object.min()
object.pop()
object.top()
object.min()
