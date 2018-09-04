//: Playground - noun: a place where people can play

import UIKit

public func getLongestBinaryGapFor(_ N : Int) -> Int {
    
    var arrayOfIndexes:[Int] = []
    let binaryString = String(N, radix:2)
    
    print("Binary String of \"\(N)\" is: \"\(binaryString)\"")
    
    var longestBinaryGap:Int = 0
    var index = 0
    
    for char in binaryString {
        if char == "1" {
            arrayOfIndexes.append(index)
            let currentBinaryGap = getCurrentBinaryGapFor(arrayOfIndexes)
            if arrayOfIndexes.count == 2 {
                longestBinaryGap = currentBinaryGap
            } else if index > 2 {
                if currentBinaryGap > longestBinaryGap {
                    longestBinaryGap = currentBinaryGap
                }
            }
        }
        index += 1
    }
    
    print("Position of 1's: \(arrayOfIndexes)")
    return longestBinaryGap
}

func getCurrentBinaryGapFor(_ array:[Int]) -> Int {
    var currentBinaryGap = 0
    if array.count >= 2 {
        let currentPosition = array.count - 1
        let previousPosition = currentPosition - 1
        currentBinaryGap = array[currentPosition] - array[previousPosition] - 1
        return currentBinaryGap
    } else {
        return currentBinaryGap
    }
}

print("The longest binary gap is \(getLongestBinaryGapFor(234231046))\n")
