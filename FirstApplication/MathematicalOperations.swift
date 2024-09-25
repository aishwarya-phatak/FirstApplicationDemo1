//
//  MathematicalOperations.swift
//  FirstApplication
//
//  Created by Vishal Jagtap on 25/09/24.
//

import Foundation

@objc protocol MathematicalOperations{
    @objc optional func addition(n1 : Int, n2 : Int)
    func subtraction(n1 : Int, n2 : Int)
    func multiplication()
    func division()
}
