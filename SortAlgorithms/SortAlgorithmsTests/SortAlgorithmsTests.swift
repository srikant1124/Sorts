//
//  SortAlgorithmsTests.swift
//  SortAlgorithmsTests
//
//  Created by Kumar jena, Srikant - Srikant on 8/12/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import SortAlgorithms
class SortAlgorithmsTests: XCTestCase {
    var model: Sorts!
    override func setUpWithError() throws {
        super.setUp()
        model = Sorts()
    }

    override func tearDownWithError() throws {
       model = nil
    }

    func testMergeSort() throws {
        var arr = [2, 5, 4, 6, 1, 3]
        arr.mergeSort()
        XCTAssertEqual(arr, [1,2,3,4,5,6], "It should sort")
        
        var arr1 = [5, 2]
        arr1.mergeSort()
        XCTAssertEqual(arr1, [2,5], "It should sort")
        
        var arr2 = [5]
        arr2.mergeSort()
        XCTAssertEqual(arr2, [5], "It should sort")
        
        var arr3: [Int] = []
        arr3.mergeSort()
        XCTAssertEqual(arr3, [], "It should sort")
        
        var arr4 = [2.3, 5.9, 4.0, 6.9, 1.0, 3]
        arr4.mergeSort()
        XCTAssertEqual(arr4, [1.0,2.3,3.0,4.0,5.9,6.9], "It should sort")
        
        var arr5 = ["Srikant", "Sunil", "Srini", "Shashank"]
        arr5.mergeSort()
        XCTAssertEqual(arr5, ["Shashank", "Srikant", "Srini", "Sunil"], "It should sort")
    }
    
    func testBubbleSort() throws {
        var arr = [2, 5, 4, 6, 1, 3]
        arr.bubbleSort()
        XCTAssertEqual(arr, [1,2,3,4,5,6], "It should sort")
        
        var arr1 = [5, 2]
        arr1.bubbleSort()
        XCTAssertEqual(arr1, [2,5], "It should sort")
        
        var arr2 = [5]
        arr2.bubbleSort()
        XCTAssertEqual(arr2, [5], "It should sort")
        
        var arr3: [Int] = []
        arr3.bubbleSort()
        XCTAssertEqual(arr3, [], "It should sort")
        
        var arr4 = [2.3, 5.9, 4.0, 6.9, 1.0, 3]
        arr4.bubbleSort()
        XCTAssertEqual(arr4, [1.0,2.3,3.0,4.0,5.9,6.9], "It should sort")
        
        var arr5 = ["Srikant", "Sunil", "Srini", "Shashank"]
        arr5.bubbleSort()
        XCTAssertEqual(arr5, ["Shashank", "Srikant", "Srini", "Sunil"], "It should sort")
    }
    
    func testSelectionSort() throws {
        var arr = [2, 5, 4, 6, 1, 3]
        arr.selectionSort()
        XCTAssertEqual(arr, [1,2,3,4,5,6], "It should sort")
        
        var arr1 = [5, 2]
        arr1.selectionSort()
        XCTAssertEqual(arr1, [2,5], "It should sort")
        
        var arr2 = [5]
        arr2.selectionSort()
        XCTAssertEqual(arr2, [5], "It should sort")
        
        var arr3: [Int] = []
        arr3.selectionSort()
        XCTAssertEqual(arr3, [], "It should sort")
        
        var arr4 = [2.3, 5.9, 4.0, 6.9, 1.0, 3]
        arr4.selectionSort()
        XCTAssertEqual(arr4, [1.0,2.3,3.0,4.0,5.9,6.9], "It should sort")
        
        var arr5 = ["Srikant", "Sunil", "Srini", "Shashank"]
        arr5.selectionSort()
        XCTAssertEqual(arr5, ["Shashank", "Srikant", "Srini", "Sunil"], "It should sort")
    }
    
    func testInsertionSort() throws {
        var arr = [2, 5, 4, 6, 1, 3]
        arr.insertionSort()
        XCTAssertEqual(arr, [1,2,3,4,5,6], "It should sort")
        
        var arr1 = [5, 2]
        arr1.insertionSort()
        XCTAssertEqual(arr1, [2,5], "It should sort")
        
        var arr2 = [5]
        arr2.insertionSort()
        XCTAssertEqual(arr2, [5], "It should sort")
        
        var arr3: [Int] = []
        arr3.insertionSort()
        XCTAssertEqual(arr3, [], "It should sort")
        
        var arr4 = [2.3, 5.9, 4.0, 6.9, 1.0, 3]
        arr4.insertionSort()
        XCTAssertEqual(arr4, [1.0,2.3,3.0,4.0,5.9,6.9], "It should sort")
        
        var arr5 = ["Srikant", "Sunil", "Srini", "Shashank"]
        arr5.insertionSort()
        XCTAssertEqual(arr5, ["Shashank", "Srikant", "Srini", "Sunil"], "It should sort")
    }

    func testInsertionNlogNSort() throws {
        var arr = [2, 5, 4, 6, 1, 3]
        arr.insertionSortUsingBinarySearch()
        XCTAssertEqual(arr, [1,2,3,4,5,6], "It should sort")
        
        var arr1 = [5, 2]
        arr1.insertionSortUsingBinarySearch()
        XCTAssertEqual(arr1, [2,5], "It should sort")
        
        var arr2 = [5]
        arr2.insertionSortUsingBinarySearch()
        XCTAssertEqual(arr2, [5], "It should sort")
        
        var arr3: [Int] = []
        arr3.insertionSortUsingBinarySearch()
        XCTAssertEqual(arr3, [], "It should sort")
        
        var arr4 = [2.3, 5.9, 4.0, 6.9, 1.0, 3]
        arr4.insertionSortUsingBinarySearch()
        XCTAssertEqual(arr4, [1.0,2.3,3.0,4.0,5.9,6.9], "It should sort")
        
        var arr5 = ["Srikant", "Sunil", "Srini", "Shashank"]
        arr5.insertionSortUsingBinarySearch()
        XCTAssertEqual(arr5, ["Shashank", "Srikant", "Srini", "Sunil"], "It should sort")
    }
    
    func testQuickSort() throws {
        var arr = [2, 5, 4, 6, 1, 3]
        arr.quickSort()
        XCTAssertEqual(arr, [1,2,3,4,5,6], "It should sort")
        
        var arr1 = [5, 2]
        arr1.quickSort()
        XCTAssertEqual(arr1, [2,5], "It should sort")
        
        var arr2 = [5]
        arr2.quickSort()
        XCTAssertEqual(arr2, [5], "It should sort")
        
        var arr3: [Int] = []
        arr3.quickSort()
        XCTAssertEqual(arr3, [], "It should sort")
        
        var arr4 = [2.3, 5.9, 4.0, 6.9, 1.0, 3]
        arr4.quickSort()
        XCTAssertEqual(arr4, [1.0,2.3,3.0,4.0,5.9,6.9], "It should sort")
        
        var arr5 = ["Srikant", "Sunil", "Srini", "Shashank"]
        arr5.quickSort()
        XCTAssertEqual(arr5, ["Shashank", "Srikant", "Srini", "Sunil"], "It should sort")
    }
}
