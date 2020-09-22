//3.二维数组中的查找
/*
 题目：在一个二维数组中，每一行都按照从左到后递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个函数，输入这样的一个二位数组和一个整数，判断该数组是否含有该整数。
 */
import UIKit
import Foundation

var arr = [
    [1, 2, 8, 9],
    [2, 4, 9, 12],
    [4, 7, 10, 13],
    [6, 8, 11, 15]
]

func findTarget(matrix: [[Int]], target: Int) -> Bool{
    var found = false
    let rows = arr.count
    let columns = arr[0].count
    
    if rows > 0 && columns > 0 {
        //从右上角开始查找
        var row = 0;
        var col = columns - 1;
        while row < rows && col >= 0 {
            if matrix[row][col] == target {
                found = true
                break
            //如果大于target列数-1，如果小于target行数+1
            } else if matrix[row][col] > target {
                col -= 1
            } else {
                row += 1
            }
        }
    }
    return found
}

findTarget(matrix: arr, target: 1)
findTarget(matrix: arr, target: 16)
findTarget(matrix: arr, target: 11)


