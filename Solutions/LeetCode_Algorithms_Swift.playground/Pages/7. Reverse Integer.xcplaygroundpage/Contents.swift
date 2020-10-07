/*:
 # Reverse Interger

 Given a 32-bit signed integer, reverse digits of an integer.

 - Note: Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−2^31,  2^31 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.

 ## Example

 ```
 Input: 123
 Output: 321
 ```

 ```
 Input: -123
 Output: -321
 ```

 ```
 Input: 120
 Output: 21
 ```

 ## Official Link

 <https://leetcode-cn.com/problems/reverse-integer>

 ---
 */

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        var res = 0
        var x = x
        while x != 0 {
            if res > Int(Int32.max) / 10 || res < Int(Int32.min) / 10 {
                return 0
            }
            res = res * 10 + x % 10
            x = x / 10
        }
        return res
    }
}

Solution().reverse(01)
Solution().reverse(10)
Solution().reverse(321)
Solution().reverse(Int(pow(2.0, 10)))
Solution().reverse(Int(-pow(2.0, 10)))
