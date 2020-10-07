/*:
 # Roman to Integer

 Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

 ```
 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 ```

 For example, two is written as II in Roman numeral, just two one's added together. Twelve is written as, XII, which is simply X + II. The number twenty seven is written as XXVII, which is XX + V + II.

 Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

 - I can be placed before V (5) and X (10) to make 4 and 9.
 - X can be placed before L (50) and C (100) to make 40 and 90.
 - C can be placed before D (500) and M (1000) to make 400 and 900.

 Given a roman numeral, convert it to an integer. Input is guaranteed to be within the range from 1 to 3999.

 ## Example

 ```
 Input: "III"
 Output: 3
 ```

 ```
 Input: "IV"
 Output: 4
 ```

 ```
 Input: "IX"
 Output: 9
 ```

 ```
 Input: "LVIII"
 Output: 58
 Explanation: L = 50, V= 5, III = 3.
 ```

 ```
 Input: "MCMXCIV"
 Output: 1994
 Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
 ```

 ## Official Link

 <https://leetcode-cn.com/problems/roman-to-integer/>

 ---
 */

class Solution {
    func romanToInt(_ s: String) -> Int {
        var num = 0
        var str = s
        while true {
            if str.contains("IV") {
                num += 4
                let range = str.range(of: "IV")!
                str.removeSubrange(range)
                continue
            } else if str.contains("IX") {
                num += 9
                let range = str.range(of: "IX")!
                str.removeSubrange(range)
                continue
            } else if str.contains("XL") {
                num += 40
                let range = str.range(of: "XL")!
                str.removeSubrange(range)
                continue
            } else if str.contains("XC") {
                num += 90
                let range = str.range(of: "XC")!
                str.removeSubrange(range)
                continue
            } else if str.contains("CD") {
                num += 400
                let range = str.range(of: "CD")!
                str.removeSubrange(range)
                continue
            } else if str.contains("CM") {
                num += 900
                let range = str.range(of: "CM")!
                str.removeSubrange(range)
                continue
            }
            break
        }
        for i in str {
            switch i {
                case "I":
                    num += 1
                    continue
                case "V":
                    num += 5
                    continue
                case "X":
                    num += 10
                    continue
                case "L":
                    num += 50
                    continue
                case "C":
                    num += 100
                    continue
                case "D":
                    num += 500
                    continue
                case "M":
                    num += 1000
                    continue
                default:
                    break
            }
        }
        return num
    }
}

//Solution().romanToInt("XX")
//Solution().romanToInt("IX")
//Solution().romanToInt("IXLCM")
Solution().romanToInt("MCMXCIV")
