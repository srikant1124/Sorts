//
//  Sorts.swift
//  SortAlgorithms
//
//  Created by Kumar jena, Srikant - Srikant on 8/12/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct Sorts {
    
    // ==========  MERGE SORT  ===============
    // Need an helper funtion check Empty cases
    
    /*func mergeSort<T: Comparable>(arr: inout [T]) {
        
        func divide<T: Comparable>(leftIndex: Int, rightIndex: Int, arr: inout [T]) {
            if leftIndex < rightIndex {
                let middleIndex = Int(Double((leftIndex + rightIndex) / 2))
                divide(leftIndex: leftIndex, rightIndex: middleIndex, arr: &arr)
                divide(leftIndex: middleIndex + 1, rightIndex: rightIndex, arr: &arr)
                merge(leftIndex: leftIndex, middleIndex: middleIndex, rightIndex: rightIndex, arr: &arr)
            }
        }
        
        func merge<T: Comparable>(leftIndex: Int,
                                  middleIndex: Int,
                                  rightIndex: Int,
                                  arr: inout [T]) {
            var arrA = Array(arr[leftIndex...middleIndex])
            var arrB = Array(arr[(middleIndex + 1)...rightIndex])
            guard let lastA = arrA.last,
                let lastB = arrB.last else {
                    return
            }
            if lastA > lastB {
                arrB.append(lastA)
            } else {
                arrA.append(lastB)
            }
            let length = (arrA.count + arrB.count) - 1
            var indexI = 0
            var indexJ = 0
            var counter = 0
            var indexK = leftIndex
            
            while counter < length {
                counter += 1
                if arrA[indexI] > arrB[indexJ] {
                    arr[indexK] = arrB[indexJ]
                    indexJ += 1
                } else {
                    arr[indexK] = arrA[indexI]
                    indexI += 1
                }
                indexK += 1
            }
        }
        
        
        if arr.isEmpty || arr.count == 1 { return }
        divide(leftIndex: 0, rightIndex: arr.count - 1, arr: &arr)
        
    }*/
    //========================== Insertion Sort (n ^ 2) ==========================
    
    /*func insertionSort<T: Comparable>(arr: inout [T]) {
        if arr.count <= 1 { return }
        var indexI = 0
        var temp = arr[indexI + 1]
        
        for indexJ in 1..<arr.count {
            indexI = indexJ - 1
            temp = arr[indexJ]
            
            while indexI > -1 && temp <= arr[indexI] {
                arr[indexI + 1] = arr[indexI]
                indexI -= 1
            }
            indexI += 1
            arr[indexI] = temp
        }
    } */
    
    //========================== Insertion Sort n log n ==========================
    
    /*func insertionSort_NlogN<T: Comparable>(arr: inout [T]) {
        // can send complete array and index I and J
        func indexToInsert<T: Comparable>(arr: [T],
                                          iIndex: Int = 0,
                                          jIndex: Int,
                                          targetValue: T) -> Int {
            let length = (jIndex - iIndex) + 1
            var leftIndex = iIndex
            var rightIndex = jIndex
            var middleIndex = 0
            while leftIndex <= rightIndex {
                middleIndex = (leftIndex + rightIndex) / 2
                let value = arr[middleIndex]
                if value == targetValue {
                    return middleIndex + 1
                } else if value > targetValue {
                    rightIndex = middleIndex - 1
                } else {
                    leftIndex = middleIndex + 1
                }
            }
            let minIndex = min(rightIndex, leftIndex)
            if minIndex <= -1 {
                return 0
            } else if minIndex >= length {
                return length
            } else if targetValue > arr[middleIndex] {
                return max(rightIndex, leftIndex)
            } else {
                return minIndex
            }
        }
        
        // can send complete array and index I and J
        func indexToInsert<T: Comparable>(arr: [T], targetValue: T) -> Int {
            if arr.isEmpty { return -1 }
            let length = arr.count
            if arr.count == 1 {
                if arr[0] > targetValue {
                    return 0
                } else {
                    return 1
                }
            }
            var leftIndex = 0
            var rightIndex = length - 1
            var middleIndex = 0
            while leftIndex <= rightIndex {
                middleIndex = (leftIndex + rightIndex) / 2
                let value = arr[middleIndex]
                if value == targetValue {
                    return middleIndex + 1
                } else if value > targetValue {
                    rightIndex = middleIndex - 1
                } else {
                    leftIndex = middleIndex + 1
                }
            }
            let minIndex = min(rightIndex, leftIndex)
            if minIndex <= -1 {
                return 0
            } else if minIndex >= length {
                return length
            } else if targetValue > arr[middleIndex] {
                return max(rightIndex, leftIndex)
            } else {
                return minIndex
            }
        }
        
        if arr.count <= 1 { return }
        
        for indexJ in 1..<arr.count {
            let value = arr[indexJ]
            //let tempArr = Array(arr[0..<indexJ])
            let indexTo = indexToInsert(arr: arr, jIndex: indexJ, targetValue: value)
            //indexToInsert(arr: tempArr, targetValue: value)
            arr.insert(value, at: indexTo)
            arr.remove(at: indexJ + 1)
        }
    }*/
    
    //========================== Selection Sort ==========================
    
    /*func selectionSort<T: Comparable>(arr: inout [T]) {
        func swapValues<T: Comparable>(indexOne: Int, indexTwo: Int, arr: inout [T]) {
            if arr[indexOne] != arr[indexTwo] {
                let temp = arr[indexOne]
                arr[indexOne] = arr[indexTwo]
                arr[indexTwo] = temp
            }
        }
        
        if arr.count <= 1 { return }
        for indexI in 0..<arr.count {
            var minIndex = indexI
            for jIndex in (indexI + 1)..<arr.count {
                if arr[jIndex] < arr[minIndex] {
                    minIndex = jIndex
                }
            }
            if arr[indexI] > arr[minIndex] {
                swapValues(indexOne: indexI, indexTwo: minIndex, arr: &arr)
            }
        }
    }*/
    
    //========================== Quick Sort ==========================
    /*func quickSort<T: Comparable>(arr: inout [T]) {
        
        func applyQuickSort<T: Comparable>(_ arr: inout [T], _ leftIndex: Int, _ rightIndex: Int) {
            if leftIndex < rightIndex {
                let partitionIndex = getPartitionIndex(&arr, leftIndex, rightIndex)
                applyQuickSort(&arr, leftIndex, partitionIndex - 1)
                applyQuickSort(&arr, partitionIndex + 1, rightIndex)
            }
        }
        
        func getPartitionIndex<T: Comparable>(_ arr: inout [T], _ leftIndex: Int, _ rightIndex: Int) -> Int {
            var iIndex = leftIndex - 1
            var jIndex = leftIndex
            
            while jIndex <= rightIndex {
                if arr[jIndex] <= arr[rightIndex] {
                    iIndex += 1
                    swapValues(indexOne: iIndex, indexTwo: jIndex, arr: &arr)
                }
                jIndex += 1
            }
            return iIndex
        }
        
        func swapValues<T: Comparable>(indexOne: Int, indexTwo: Int, arr: inout [T]) {
            if arr[indexOne] != arr[indexTwo] {
                let temp = arr[indexOne]
                arr[indexOne] = arr[indexTwo]
                arr[indexTwo] = temp
            }
        }
        
        if arr.isEmpty { return }
        applyQuickSort(&arr, 0, arr.count - 1)
    }*/
}

extension Array where Element: Comparable {
    
    // ==========  Quick SORT n log n ===============
    
    mutating func quickSort() {
        func applyQuickSort(_ leftIndex: Int, _ rightIndex: Int) {
            if leftIndex < rightIndex {
                let partitionIndex = getPartitionIndex(leftIndex, rightIndex)
                applyQuickSort(leftIndex, partitionIndex - 1)
                applyQuickSort(partitionIndex + 1, rightIndex)
            }
        }
        
        func getPartitionIndex( _ leftIndex: Int, _ rightIndex: Int) -> Int {
            var iIndex = leftIndex - 1
            var jIndex = leftIndex
            
            while jIndex <= rightIndex {
                if self[jIndex] <= self[rightIndex] {
                    iIndex += 1
                    swapValues(indexOne: iIndex, indexTwo: jIndex)
                }
                jIndex += 1
            }
            return iIndex
        }
        
        func swapValues(indexOne: Int, indexTwo: Int) {
            if self[indexOne] != self[indexTwo] {
                let temp = self[indexOne]
                self[indexOne] = self[indexTwo]
                self[indexTwo] = temp
            }
        }
        
        if self.isEmpty { return }
        applyQuickSort(0, self.count - 1)
    }
    
    // ==========  Merge SORT n log n ===============
    
    mutating func mergeSort() {
        func divide(leftIndex: Int, rightIndex: Int) {
            if leftIndex < rightIndex {
                let middleIndex = Int(Double((leftIndex + rightIndex) / 2))
                divide(leftIndex: leftIndex, rightIndex: middleIndex)
                divide(leftIndex: middleIndex + 1, rightIndex: rightIndex)
                merge(leftIndex: leftIndex, middleIndex: middleIndex, rightIndex: rightIndex)
            }
        }
        
        func merge(leftIndex: Int,
                   middleIndex: Int,
                   rightIndex: Int) {
            var arrA = Array(self[leftIndex...middleIndex])
            var arrB = Array(self[(middleIndex + 1)...rightIndex])
            guard let lastA = arrA.last,
                let lastB = arrB.last else {
                    return
            }
            if lastA > lastB {
                arrB.append(lastA)
            } else {
                arrA.append(lastB)
            }
            let length = (arrA.count + arrB.count) - 1
            var indexI = 0
            var indexJ = 0
            var counter = 0
            var indexK = leftIndex
            
            while counter < length {
                counter += 1
                if arrA[indexI] > arrB[indexJ] {
                    self[indexK] = arrB[indexJ]
                    indexJ += 1
                } else {
                    self[indexK] = arrA[indexI]
                    indexI += 1
                }
                indexK += 1
            }
        }
        
        if self.isEmpty || self.count == 1 { return }
        divide(leftIndex: 0, rightIndex: self.count - 1)
    }
    
    // =============== Bubble Sort (n ^ 2) ==================
    
    mutating func bubbleSort() {
        
        func swapValues(indexOne: Int, indexTwo: Int) {
            if self[indexOne] != self[indexTwo] {
                let temp = self[indexOne]
                self[indexOne] = self[indexTwo]
                self[indexTwo] = temp
            }
        }
        
        if self.isEmpty || self.count == 1 { return }
        var isSwapped = true
        var indexJ = self.count - 2
        
        while 0 <= indexJ && isSwapped {
            isSwapped = false
            
            for indexI in 0...indexJ {
                if self[indexI] > self[indexI + 1] {
                    swapValues(indexOne: indexI, indexTwo: indexI + 1)
                }
                isSwapped = true
            }
            indexJ -= 1
        }
    }
    
    //========================== Selection Sort (n ^ 2) ==========================
    
    mutating func selectionSort() {
        func swapValues(indexOne: Int, indexTwo: Int) {
            if self[indexOne] != self[indexTwo] {
                let temp = self[indexOne]
                self[indexOne] = self[indexTwo]
                self[indexTwo] = temp
            }
        }
        
        if self.count <= 1 { return }
        for indexI in 0..<self.count {
            var minIndex = indexI
            for jIndex in (indexI + 1)..<self.count {
                if self[jIndex] < self[minIndex] {
                    minIndex = jIndex
                }
            }
            if self[indexI] > self[minIndex] {
                swapValues(indexOne: indexI, indexTwo: minIndex)
            }
        }
    }
    
    //========================== Insertion Sort (n ^ 2) ==========================
    
    mutating func insertionSort() {
        if count <= 1 { return }
        var indexI = 0
        var temp = self[indexI + 1]
        
        for indexJ in 1..<count {
            indexI = indexJ - 1
            temp = self[indexJ]
            
            while indexI > -1 && temp <= self[indexI] {
                self[indexI + 1] = self[indexI]
                indexI -= 1
            }
            indexI += 1
            self[indexI] = temp
        }
    }
    
    //========================== Insertion Sort n log n ==========================
    
    mutating func insertionSortUsingBinarySearch() {
        func indexToInsert(iIndex: Int = 0,
                           jIndex: Int,
                           targetValue: Element) -> Int {
            let length = (jIndex - iIndex) + 1
            var leftIndex = iIndex
            var rightIndex = jIndex
            var middleIndex = 0
            while leftIndex <= rightIndex {
                middleIndex = (leftIndex + rightIndex) / 2
                let value = self[middleIndex]
                if value == targetValue {
                    return middleIndex + 1
                } else if value > targetValue {
                    rightIndex = middleIndex - 1
                } else {
                    leftIndex = middleIndex + 1
                }
            }
            let minIndex = Swift.min(rightIndex, leftIndex)
            if minIndex <= -1 {
                return 0
            } else if minIndex >= length {
                return length
            } else if targetValue > self[middleIndex] {
                return Swift.max(rightIndex, leftIndex)
            } else {
                return minIndex
            }
        }
        
        // can send complete array and index I and J
        func indexToInsert(targetValue: Element) -> Int {
            if self.isEmpty { return -1 }
            let length = self.count
            if self.count == 1 {
                if self[0] > targetValue {
                    return 0
                } else {
                    return 1
                }
            }
            var leftIndex = 0
            var rightIndex = length - 1
            var middleIndex = 0
            while leftIndex <= rightIndex {
                middleIndex = (leftIndex + rightIndex) / 2
                let value = self[middleIndex]
                if value == targetValue {
                    return middleIndex + 1
                } else if value > targetValue {
                    rightIndex = middleIndex - 1
                } else {
                    leftIndex = middleIndex + 1
                }
            }
            let minIndex = Swift.min(rightIndex, leftIndex)
            if minIndex <= -1 {
                return 0
            } else if minIndex >= length {
                return length
            } else if targetValue > self[middleIndex] {
                return Swift.max(rightIndex, leftIndex)
            } else {
                return minIndex
            }
        }
        
        if count <= 1 { return }
        
        for indexJ in 1..<count {
            let value = self[indexJ]
            let indexTo = indexToInsert(jIndex: indexJ, targetValue: value)
            insert(value, at: indexTo)
            remove(at: indexJ + 1)
        }
    }
}
