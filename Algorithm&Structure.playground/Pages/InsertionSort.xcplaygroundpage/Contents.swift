import Foundation

//: Playground - noun: a place where people can play

/// Performs the Insertion sort algorithm to a given array
///
/// - Parameters:
///   - array: the array of elements to be sorted
///   - isOrderedBefore: returns true if the elements provided are in the corect order
/// - Returns: a sorted array containing the same elements
func insertionSort<T>(_ array: inout [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
    guard array.count > 1 else { return array }
    
    for i in 1..<array.count {
        var y = i
        let temp = array[y]
        while y > 0 && isOrderedBefore(temp, array[y - 1]) {
            array[y] = array[y - 1]
            y -= 1
        }
        array[y] = temp
    }
    return array
}

/// Performs the Insertion sort algorithm to a given array
///
/// - Parameter array: the array to be sorted, conatining elements that conform to the Comparable protocol
/// - Returns: a sorted array containing the same elements
func insertionSort<T: Comparable>(_ array: inout [T]) -> [T] {
    for i in 1..<array.count {
        var y = i
        let temp = array[y]
        while y > 0 && temp < array[y - 1] {
            array[y] = array[y - 1]
            y -= 1
        }
        array[y] = temp
    }
    return array
}

var list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
print(insertionSort(&list))
print(insertionSort(&list, <))
print(insertionSort(&list, >))
//: [Next](@next)
