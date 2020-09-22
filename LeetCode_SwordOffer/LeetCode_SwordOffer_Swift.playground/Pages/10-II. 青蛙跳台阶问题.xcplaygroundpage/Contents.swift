/*:
 # 青蛙跳台阶问题

 一只青蛙一次可以跳上1级台阶，也可以跳上2级台阶。求该青蛙跳上一个 n 级的台阶总共有多少种跳法。

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

 ---
 */

import Foundation

class Solution {
    func numWays(_ n: Int) -> Int {
        if n == 0 {
            return 1
        } else if n == 1 {
            return 1
        } else if n == 2 {
            return 2
        }

        var x = 1
        var y = 2
        var sum = 0

        for _ in 3 ... n {
            sum = x + y
            x = y
            y = sum % 1000000007

        }
        return sum % 1000000007
    }
}

Solution().numWays(2)
Solution().numWays(7)
Solution().numWays(1888)
