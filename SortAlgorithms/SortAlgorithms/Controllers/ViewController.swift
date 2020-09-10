//
//  ViewController.swift
//  SortAlgorithms
//
//  Created by Kumar jena, Srikant - Srikant on 8/12/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let binary = "11001"
        if let number = Int(binary, radix: 2) {
            print(number)
        }
    }
    //    @inlinable
    //    public __consuming func filter(
    //      _ isIncluded: (Element) throws -> Bool
    //    ) rethrows -> [Element] {
    //      return try _filter(isIncluded)
    //    }
    
}
