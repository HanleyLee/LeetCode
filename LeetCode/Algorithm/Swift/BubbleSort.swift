import Foundation


public func bubbleSort<T> (_ array: inout [T], _ sortType: (T,T) -> Bool) -> [T]  {

    for i in 0..<array.count {
        for j in 1..<array.count-i {
            if sortType(array[j], array[j-1]) {
                array.swapAt(j, j - 1)
            }
        }
    }
    
    return array
}




var array = [4,2,1,3]

print("before:",array)
print("after:", bubbleSort(&array, <))
print("after:", bubbleSort(&array, >))
