////: Playground - noun: a place where people can play



func sortArray(array1: [Int], array2: [Int]) -> [Int] {
    
    var mergeArray = array1 + array2
    var setArray = Array(Set(mergeArray))
    var SortedArray: [Int] = []
    var a = setArray
    
    for x in 1..<a.count {
        var y = x
        let temp = a[y]
        while y > 0 && temp < a[y - 1] {
            a[y] = a[y - 1]
            y -= 1
        }
        a[y] = temp
    }
    
    
    
//    return SortedArray
    
    return a

}

sortArray([0,0,4,7,89,3,2], array2: [5,4,100,55,99])








