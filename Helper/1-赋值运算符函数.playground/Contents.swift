//1.重载运算符函数

import UIKit
import Foundation

struct CMyString {
    var data: String!
    
    init(data: String) {
        self.data = data
    }
    
    init(str: CMyString) {
        self.data = str.data;
    }
    
}

func + (left: CMyString, right: CMyString) -> CMyString {
    return CMyString(data: left.data + right.data)
}


func test() {
    let helloStr = CMyString(data: "hello,")
    let swiftStr = CMyString(data: "swift")
    let togetherStr = helloStr + swiftStr;
    print(togetherStr.data)
}

test()
