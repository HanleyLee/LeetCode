/**
 # 数值的整数次方

 实现函数double Power(double base, int exponent)，求base的exponent次方。不得使用库函数，同时不需要考虑大数问题。

 ## 实例

 - 实例 1

 ```
 输入: 2.00000, 10
 输出: 1024.00000
```

 ```
 输入: 2.10000, 3
 输出: 9.26100
 ```

 ```
 输入: 2.00000, -2
 输出: 0.25000
 解释: 2^-2 = 1/2^2 = 1/4 = 0.25
 ```

 ## 说明

 - -100.0 < x < 100.0
 - n 是 32 位有符号整数，其数值范围是 [−231, 231 − 1] 。

 ## Official Link

 <https://leetcode-cn.com/problems/shu-zhi-de-zheng-shu-ci-fang-lcof/>

 ---
 */
import Foundation

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var base = x
        var n = n
        var res: Double = 1

        while n != 0 {
            if n & 1 == 1{
                res *= base
            }
            base *= base
            n = n >> 1
        }
        return res
    }
}

Solution().myPow(0.00001, 214748647)
Solution().myPow(3, 3)
Solution().myPow(3, 20)


/// 常规解法, 耗时较久, 不能通过测试
class Solution2 {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var total = 1.0
        if n < 0 {
            for _ in 1 ... -n {
                total = total * x
            }
            return 1 / total

        } else if n == 0 {
            total = 1
        } else if n > 0 {
            for _ in 1 ... n  {
                total = total * x
            }
        }

        return total
    }
}

Solution2().myPow(3.0, 3)
Solution2().myPow(2, -2)
Solution2().myPow(5, 11)
Solution2().myPow(0.00001, 2147483647)
