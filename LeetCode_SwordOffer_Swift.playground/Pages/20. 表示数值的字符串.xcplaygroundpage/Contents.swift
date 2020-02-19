/**
 # 表示数值的字符串

 请实现一个函数用来判断字符串是否表示数值（包括整数和小数）。例如，字符串"+100"、"5e2"、"-123"、"3.1416"、"0123"及"-1E-16"都表示数值，但"12e"、"1a3.14"、"1.2.3"、"+-5"及"12e+5.4"都不是。

 ## Official Link

 <https://leetcode-cn.com/problems/biao-shi-shu-zhi-de-zi-fu-chuan-lcof/>

 ---
 */

import Foundation

class Solution {
    func isNumber(_ s: String) -> Bool {
        let s1 = s.replacingOccurrences(of: " ", with: "")
        if Double(s1) != nil, s1.first != "."{
            return true
        }
        return false
    }
}

Solution().isNumber(".1")
Solution().isNumber("li1")

