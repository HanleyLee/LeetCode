/*:
 # 丑数

 我们把只包含因子 2、3 和 5 的数称作丑数（Ugly Number）。求按从小到大的顺序的第 n 个丑数。

 ## 示例

 ```
 输入: n = 10
 输出: 12
 解释: 1, 2, 3, 4, 5, 6, 8, 9, 10, 12 是前 10 个丑数。
 ```

 ## 限制

 - 1 是丑数。
 - n 不超过1690。

 ## Official Link

 <https://leetcode-cn.com/problems/chou-shu-lcof/>

 ---
 */

import Foundation


class Solution {
    func nthUglyNumber(_ n: Int) -> Int {
        guard n > 0 else { return 0 }
        var res = [1]

        var i1 = 0 // 指针
        var i2 = 0
        var i3 = 0

        for _ in 1 ... n {
            let n1 = res[i1] * 2 // 丑数
            let n2 = res[i2] * 3
            let n3 = res[i3] * 5
            let minVal = min(n1, n2, n3)

            if minVal == n1 {
                i1 += 1
            }
            if minVal == n2 {
                i2 += 1
            }
            if minVal == n3 {
                i3 += 1
            }

            res.append(minVal)
        }

        return res[n - 1]
    }
}
//class Solution {
//    func nthUglyNumber(_ n: Int) -> Int {
//        if n <= 0 {
//            return 0
//        }
//
//        var i1 = 0
//        var i2 = 0
//        var i3 = 0
//        var res = [1]
//        for _ in 1...n {
//            let n1 = res[i1] * 2
//            let n2 = res[i2] * 3
//            let n3 = res[i3] * 5
//            let minVulue = min(n1, n2, n3)
//            if minVulue == n1 {
//                i1 += 1
//            }
//            if minVulue == n2 {
//                i2 += 1
//            }
//            if minVulue == n3 {
//                i3 += 1
//            }
//            res.append(minVulue)
//        }
//        return res[n - 1]
//
//    }
//}

Solution().nthUglyNumber(10)
