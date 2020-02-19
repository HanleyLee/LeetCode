/*:
 # 斐波那契数列

 写一个函数，输入 n ，求斐波那契（Fibonacci）数列的第 n 项。斐波那契数列的定义如下：

 ```
 F(0) = 0,   F(1) = 1
 F(N) = F(N - 1) + F(N - 2), 其中 N > 1.
 ```

 斐波那契数列由 0 和 1 开始，之后的斐波那契数就是由之前的两数相加而得出。

 答案需要取模 1e9+7（1000000007），如计算初始结果为：1000000008，请返回 1。

 ## 示例

 ```
 输入：n = 2
 输出：1
 ```

 ```
 输入：n = 5
 输出：5
 ```

 ## 提示

 `0 <= n <= 100`

 ## Official Link

 <https://leetcode-cn.com/problems/fei-bo-na-qi-shu-lie-lcof/>
 */

import Foundation

// 循环方式解法
class Solution {
    func fib(_ n: Int) -> Int {
        if n == 0 {
            return 0
        } else if n == 1 {
            return 1
        }

        var x = 0
        var y = 1
        var sum = 0

        for _ in 2 ... n {
            sum = x + y
            x = y
            y = sum % 1000000007

        }
        return sum % 1000000007
    }
}

Solution().fib(2)

Solution().fib(1888)


// 递归方式解法(在数比较大时耗费资源太多!)

class Solution2 {
    func fib(_ n: Int) -> Int {
        if n == 0 {
            return 0
        } else if n == 1 {
            return 1
        }

        return (fib(n - 1) + fib(n - 2)) % 1000000007
    }

}
