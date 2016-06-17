//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func sortArray(arrayOne: [Int], arrayTwo: [Int]) -> [Int] {
    
    
    var arrayOneIndex = 0
    var arrayTwoIndex = 0
    var sortedArr:[Int] = []
    
    while arrayOneIndex < arrayOne.count && arrayTwoIndex < arrayTwo.count {
        if arrayOne[arrayOneIndex] < arrayTwo[arrayTwoIndex]{
            sortedArr.append(arrayOne[arrayOneIndex])
            arrayOneIndex += 1
        } else if arrayOne[arrayOneIndex] > arrayTwo[arrayTwoIndex]{
            sortedArr.append(arrayTwo[arrayTwoIndex])
            arrayTwoIndex += 1
        } else {
            sortedArr.append(arrayOne[arrayOneIndex])
            arrayOneIndex += 1
            sortedArr.append(arrayTwo[arrayTwoIndex])
            arrayTwoIndex += 1
        }
    }
    while arrayOneIndex < arrayOne.count {
        sortedArr.append(arrayOne[arrayOneIndex])
        arrayOneIndex += 1
    }
    while arrayTwoIndex < arrayTwo.count {
        sortedArr.append(arrayTwo[arrayTwoIndex])
        arrayTwoIndex += 1
    }
    
    return sortedArr
}
func mergeArr(array:[Int]) -> [Int] {
    
    guard array.count > 1 else {
        return array
    }
    let arrMiddle = array.count / 2
    let arrayOne = mergeArr(Array(array[0..<arrMiddle]))
    let arrayTwo = mergeArr(Array(array[arrMiddle..<array.count]))
    
    return sortArray(arrayOne, arrayTwo: arrayTwo)
}

sortArray([1,4,7,33,44], arrayTwo: [0,3,5,6])







