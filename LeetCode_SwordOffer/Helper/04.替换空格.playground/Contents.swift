/**
 * 问题：请实现一个函数，将一个字符串中的空格替换成“%20”。
 * 例如，当字符串为We Are Happy.则经过替换之后的字符串为We%20Are%20Happy
 *
 * 思路：方法一： 使用系统的替换方法，需要系统库 Foundation
 *      方法二： 遍历字符串的每一个字符，然后放入一个新的字符串中。这样做开辟了新的内存空间
 *      方法三： C 语言没有特定的字符串类型，str[]，所以可以通过往原先数组中替换插入的方式。Swift 中，虽然 String
 *             也是字符串的集合，但是作为对象不能直接修改其内部元素，所以此处仅作为演示，重在思想。
 *
 */



// 方法一
import Foundation
func replaceBlankWithSystemFunction(in aString: String) -> String {
    let aChar: String = "%20"

     // associated Foundation
    return aString.replacingOccurrences(of: " ", with: aChar, options: .literal, range: nil)

}

// 方法二
func replaceBlankWithANewString(in aString: String) -> String {
  let aChar: String = "%20"
  var newString = ""
  
  for i in aString.enumerated() {
    if i.element == " " {
      newString.append(String(aChar))
    } else {
      newString.append(String(i.element))
    }
  }
  return newString
}

// 方法三
func replaceBlank(in aString: String, length: Int) -> String {
    
    var blankCount = 0  // 空格数量
    for char in aString.enumerated() {
        if char.element == " " {
            blankCount += 1
        }
    }
    
    if blankCount == 0 { return aString } // 无空格直接返回原数据
    
    let targetLength = aString.count + 2 * blankCount  // 转化后长度增长 空格*2
    
    var l = length - 1  // 原始最后下标
    var t = targetLength - 1  // 目标最后下标
  var chars = Array<Character>(repeating: "_", count: targetLength)  // 新建一个大小为 targeLength 大小的字符数组, PS: C 语言不需要新建，可以直接操作字符数组
  
  var moveCount: Int = 0
    while l >= 0 {  // 遍历 l，依次填充数据大小为 t 的数组
        let start = aString.index(aString.startIndex, offsetBy: l)
        let end = aString.index(aString.startIndex, offsetBy: l + 1)
        let char = Character(String(aString[start..<end]))  // 取到字符

        if char == " " {  // 检查每个原始数据位置是否为空
            chars[t-2...t] = ["%", "2","0"]
            t -= 2
        } else {  // 否则移动字符。从前往后插入每插入一次都要移动之后的所有字符, O(log n)，而从后往前插入，以为已经知道了目标数组大小，所以只需要移动当前字符即可 O(n)。
            chars[t] = char
            moveCount += 1
        }
        
        l -= 1
        t -= 1
    }
    
    debugPrint(moveCount)
    return String(chars)
}


// MARK: - Test

let aString = "I Love You"
let a = replaceBlank(in: aString, length: aString.count)

