/*:
 # Palindrome Number

 Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.

 ## Example

 ```
 Input: 121
 Output: true
 ```

 ```
 Input: -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 ```

 ```
 Input: 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 ```

 ## Official Link

 <https://leetcode-cn.com/problems/palindrome-number/>

 ---
 */

import Foundation

class Solution1 {
    func isPalindrome(_ x: Int) -> Bool {
        guard x > 0 else { return false}
        let str = String(x)
        let rightStr = str.suffix(Int(ceil(Double(str.count / 2))))
        let rightReversedStr = String(rightStr.reversed())
        if rightReversedStr == str.prefix(Int(ceil(Double(str.count / 2)))) {
            return true
        } else {
            return false
        }
    }
}

Solution1().isPalindrome(1232)

class Solution2 {
    
}
