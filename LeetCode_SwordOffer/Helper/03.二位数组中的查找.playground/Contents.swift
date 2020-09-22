/**
 * 问题：在一个二维数组中，每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。
 * 请完成一个函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。
 *
 * 思路：通过观察我们可以选取一个临界值(第一行的最后一个值/或最后一行第一个)进行对比从而不断缩小范围：
 * - 查找数字 > 临界值 则剔除本行 row + 1，更新临界值
 * - 查找数字 < 临界值 则剔除本列 column - 1，更新临界值
 * - 查找数字 = 临界值 则找到
 *
 * @param arr 待查找的数组
 * @param number 要查找的数
 * @return 查找结果，true找到，false没有找到
 */


// MARK: - Find number

func find(number: Int, in arr: [[Int]]) -> Bool {
    let rows = arr.count  // 数组行数
    let columns = arr[0].count  // 数组列数
    
    // 从第一行最后一个开始对比查找
    var row = 0
    var column = columns - 1
    
    while row < rows && column >= 0 {
        let temp = arr[row][column]
        
        if number > temp {
            row += 1
        } else if number < temp {
            column -= 1
        } else {
            return true
        }
    }
    return false
}


// MARK: - Test

let arr = [
    [1, 2, 3],
    [2, 3, 4],
    [3, 4, 5],
    [100, 200, 300]
]

find(number: 1, in: arr)
find(number: 3, in: arr)
find(number: 300, in: arr)

find(number: 0, in: arr)
find(number: 10, in: arr)
find(number: 1000, in: arr)

