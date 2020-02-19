import Foundation

func binarySearch(arr: [Int], key: Int) -> Int? {
    var lowerBound = 0
    var upperBound = arr.count
    var mid = 0

    while lowerBound < upperBound {
        mid = lowerBound + (upperBound - lowerBound) / 2

        if arr[mid] < key {
            lowerBound = mid + 1
        } else if arr[mid] == key {
            return mid
        } else if arr[mid] > key {
            upperBound = mid
        }

    }

    return nil
}

let arr1 = [1, 3, 4, 5, 9]
binarySearch(arr: arr1, key: 5)


func quickSort<T: Comparable>(arr: [T]) -> [T] {
    guard arr.count > 1 else { return arr }
    let pivot = arr[arr.count / 2]

    let left = arr.filter { $0 < pivot }
    let mid = arr.filter { $0 == pivot }
    let right = arr.filter { $0 > pivot }

    return quickSort(arr: left) + mid + quickSort(arr: right)
}

let arr2 = [3, 1, 5, 3, 2]
quickSort(arr: arr2)

func selectionSort<T: Comparable>(arr: [T]) -> [T] {
    guard arr.count > 1 else { return arr }
    var arr = arr
    for i in 0 ..< arr.count {
        var smallest = i
        for j in i ..< arr.count {
            if arr[smallest] > arr[j] {
                smallest = j
            }
        }
        if smallest != i {
            arr.swapAt(smallest, i)
        }
    }
    return arr
}

let arr3 = [3, 2, 45, 9, 5]
selectionSort(arr: arr3)


func bubbleSort<T: Comparable>(arr: [T]) -> [T] {
    guard arr.count > 1 else { return arr }

    var arr = arr
    for i in 0 ..< arr.count - 1 {
        for j in 1 ..< arr.count - i {
            if arr[j] < arr[j - 1] {
                arr.swapAt(j, j - 1)
            }
        }
    }

    return arr
}

let arr4 = [3, 2, 45, 9, 5]

bubbleSort(arr: arr4)


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
