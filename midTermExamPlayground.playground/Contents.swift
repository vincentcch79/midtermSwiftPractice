//: Playground - noun: a place where people can play



var arr1 = [0,9,100,4000,23123,123,9]
var arr2 = [5,0,90,44,3]
var arr3 = arr1 + arr2
var arr4 = Array(Set(arr3))

func merge(leftArray leftArray: [Int], rightArray: [Int]) -> [Int] {
    
    var leftIndex = 0
    var rightIndex = 0
    
    var mergeArray = [Int]()
    
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        if leftArray[leftIndex] < rightArray[rightIndex] {
            mergeArray.append(leftArray[leftIndex])
                        leftIndex += 1
        } else if leftArray[leftIndex] > rightArray[rightIndex] {
            mergeArray.append(rightArray[rightIndex])
            rightIndex += 1
        } else {
            mergeArray.append(leftArray[leftIndex])
            leftIndex += 1
            mergeArray.append(rightArray[rightIndex])
            rightIndex += 1
            
        }
    }
    

    while leftIndex < leftArray.count {
        mergeArray.append(leftArray[leftIndex])
        leftIndex += 1
    }
    while rightIndex < rightArray.count {
        mergeArray.append(rightArray[rightIndex])
        rightIndex += 1
    }
    
    return mergeArray
}

func sortArray(array: [Int]) -> [Int] {

    guard array.count > 1 else { return array }
        let middleIndex = array.count / 2
    
    let leftArray = sortArray(Array(array[0..<middleIndex]))
    let rightArray = sortArray(Array(array[middleIndex..<array.count]))
    
    return merge(leftArray: leftArray, rightArray: rightArray)
}

sortArray(arr4)




