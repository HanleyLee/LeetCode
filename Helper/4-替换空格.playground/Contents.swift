//4-替换空格
/*
 题目：请实现一个函数，把字符串中的每个空格替换成“%20”，例如输入“we are happy”，则输出we%20are%20happy。
 */

import UIKit
import Foundation

func replaceBlank(str: String) -> String{
    
    //计算空格的个数
    var blankCount = 0
    for c in str.characters {
        if c == " " {
            blankCount += 1
        }
    }
    
    if blankCount == 0 {
        return str
    }
    
    //计算被空格代替后的总长度
    let charCount = str.characters.count + blankCount * 2
    var result = Array<Character>(repeating: "S", count: charCount)
    
    //标记
    var oldIndex = 0
    var newIndex = 0
    
    while oldIndex < str.characters.count {
        //根据p1判断将什么字符加入到新的数组
        if str[str.index(str.startIndex, offsetBy: oldIndex)] == " " {
            result[newIndex] = "%"
            result[newIndex + 1] = "2"
            result[newIndex + 2] = "0"
            newIndex += 2
        } else {
            result[newIndex] = str[str.index(str.startIndex, offsetBy: oldIndex)]
        }
        oldIndex += 1
        newIndex += 1
    }
    
    return String(result)
}

replaceBlank(str: "we are happy")
replaceBlank(str: " ")
replaceBlank(str: "wearehappy")


