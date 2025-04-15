//  InsertSort.swift
//
//  Created by Val I on 2025-04-11.
//  Version 1.0
//  Copyright (c) 2025 Val I. All rights reserved.
//
//  The InsertSort program makes a random array.
//  it displays an array of 10 integers,
//  then displays the array in numerical order using insertion sort,

import Foundation

// Bubble sort function
func insertSort(_ array: [Int]) -> [Int] {
    var array = array
    let n = array.count
    for i in 1..<n {
        let sorted = array[i]
        var j = i - 1
        while j >= 0 && array[j] > sorted {
            array[j + 1] = array[j]
            j -= 1
        }
        array[j + 1] = sorted
    }
    return array 
}

let MAXARRSIZE = 10
var randomArray = Array(repeating: 0, count: MAXARRSIZE)

// Populate the array with random numbers
for i in 0..<MAXARRSIZE {
    randomArray[i] = Int.random(in: 1...100)
}

// Print the original array
print("The original array is \(randomArray)")

// Sort the array
randomArray = insertSort(randomArray)
// Print the sorted array
print("The sorted array is \(randomArray)")