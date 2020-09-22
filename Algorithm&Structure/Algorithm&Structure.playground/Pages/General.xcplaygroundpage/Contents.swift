import Foundation

func binarySearch(arr: [Int], key: Int) -> Int? {

    var lowerBound = 0
    var upperBound = arr.count - 1
    var mid = 0

    while lowerBound < upperBound {
    mid = lowerBound + (upperBound - lowerBound) / 2
        if arr[mid] < key {
            lowerBound = mid
        } else if arr[mid] == key {
            return mid
        } else {
            upperBound = mid
        }
    }

    return nil
}

var arr1 = [2, 4, 5, 6, 9]
binarySearch(arr: arr1, key: 5)

func selectSort<T: Comparable>(arr: [T]) -> [T] {
    var arr = arr


    for i in 0 ..< arr.count - 1 {
    var smallest = i
        for j in i + 1 ..< arr.count {
            if arr[j] < arr[i] {
                smallest = j
            }
        }

        if smallest != i {
            arr.swapAt(smallest, i)
        }
    }

    return arr
}
var arr2 = [1, 4, 2, 5]
selectSort(arr: arr2)

func bubbleSort<T: Comparable>(arr: [T]) -> [T] {
    var arr = arr

    for i in 0 ..< arr.count {

        for j in 1 ..< arr.count - i {
            if arr[j - 1] > arr[j] {
                arr.swapAt(j, j - 1)
            }
        }
    }
    return arr
}

var arr3 = [1, 4, 2, 6, 5]

bubbleSort(arr: arr3)

func quickSort<T:Comparable>(arr: [T]?) -> [T]? {
    guard let arr = arr else { return nil }
    guard arr.count > 1 else { return arr}

    let pivot = arr.count / 2

    let left = arr.filter { $0 < arr[pivot] }
    let mid = arr.filter { $0 == arr[pivot] }
    let right = arr.filter { $0 > arr[pivot] }

    return quickSort(arr: left)! + mid + quickSort(arr: right)!
}

var arr4 = [1, 4, 2, 6, 5]
quickSort(arr: arr4)



func mergeSort<T: Comparable>(arr: [T]) -> [T] {
    guard arr.count > 1 else { return arr }

    let arr = arr
    let midIndex = arr.count / 2
    let leftPile = mergeSort(arr: Array(arr[0 ..< midIndex]))
    let rightPile = mergeSort(arr: Array(arr[midIndex ..< arr.count]))
    return merge(leftPile: leftPile, rightPile: rightPile)
}

func merge<T: Comparable>(leftPile: [T], rightPile: [T]) -> [T] {
    var leftIndex = 0
    var rightIndex = 0
    var orderedPile = [T]()

    while true {
        if leftPile[leftIndex] < rightPile[rightIndex] {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        } else {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }

        guard leftIndex < leftPile.endIndex else {
            orderedPile.append(contentsOf: rightPile[rightIndex ..< rightPile.endIndex])
            break
        }

        guard rightIndex < rightPile.endIndex else {
            orderedPile.append(contentsOf: leftPile[leftIndex ..< leftPile.endIndex])
            break
        }

    }

    return orderedPile
}

let arr5 = [3, 2, 45, 9, 5]
mergeSort(arr: arr5)
