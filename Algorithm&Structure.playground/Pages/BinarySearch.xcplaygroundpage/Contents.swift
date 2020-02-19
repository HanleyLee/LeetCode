// The recursive version of binary search.

public func binarySearch<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
    if range.lowerBound >= range.upperBound {
        return nil
    } else {
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        if a[midIndex] > key {
            return binarySearch(a, key: key, range: range.lowerBound ..< midIndex)
        } else if a[midIndex] < key {
            return binarySearch(a, key: key, range: midIndex + 1 ..< range.upperBound)
        } else {
            return midIndex
        }
    }
}

/**
 The iterative version of binary search.
 
 Notice how similar these functions are. The difference is that this one
 uses a while loop, while the other calls itself recursively.
 **/

public func binarySearch<T: Comparable>(_ a: [T], key: T) -> Int? {
    var lowerBound = 0
    var upperBound = a.count
    while lowerBound < upperBound {
        let midIndex = lowerBound + (upperBound - lowerBound) / 2
        if a[midIndex] == key {
            return midIndex
        } else if a[midIndex] < key {
            lowerBound = midIndex + 1
        } else {
            upperBound = midIndex
        }
    }
    return nil
}




// Binary search requires that the array is sorted from low to high
let sorted = numArr1.sorted()

// Using recursive solution
binarySearch(sorted, key: 2, range: 0 ..< sorted.count)   // gives 1
binarySearch(sorted, key: 99, range: 0 ..< sorted.count)  // gives 11
binarySearch(sorted, key: 43, range: 0 ..< sorted.count)  // nil
binarySearch(sorted, key: 42, range: 0 ..< sorted.count)  // nil

// Using iterative solution
binarySearch(sorted, key: 2)   // gives 1
binarySearch(sorted, key: 67)  // nil
binarySearch(sorted, key: 43)  // nil
binarySearch(sorted, key: 67)  // nil
