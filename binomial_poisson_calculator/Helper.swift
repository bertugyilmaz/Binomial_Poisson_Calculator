//
//  Helper.swift
//  binomial_poisson_calculator
//
//  Created by Bertuğ Yılmaz on 10.05.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

func factorial(number: Int) -> Double {
    guard number != 0 else { return 1 }
    return Double(number) * factorial(number: number - 1)
}

func combination(x: Int, y: Int) -> Double {
    var result = factorial(number: y)
    result /= factorial(number: x) * factorial(number: y - x)
    return result
}

func calcBinomialValue(p: Double, x: Int, n: Int) -> Double{
    var result: Double = combination(x: x, y: n)
    result *= pow(p, Double(x)) * pow((1 - p), Double(n - x))
    result = result.rounded(toPlaces: 3)
    return result == 0.0 ? 1.000 : result
}

func calcPoissonValue(l: Double, x: Int) -> Double{
    var result: Double = pow(l, Double(x)) * pow(E, -l)
    result /= factorial(number: x)
    result = result.rounded(toPlaces: 3)
    return result == 0.0 ? 1.000 : result
}

func createBinomTable(){
    for i in 0...9 {
        for j in 0...9 {
            BINOMIAL_TABLE[i][j] = calcBinomialValue(p: BINOMIAL_P_VALUES[j], x: i, n: N)
        }
    }
}

func createPoissonTable(){
    for i in 0...9 {
        for j in 0...9 {
            POISSON_TABLE[i][j] = calcPoissonValue(l: POISSON_L_VALUES[j], x: i)
        }
    }
}

func printBinomTable(){
    print("BINOMIAL TABLE\n")
    
    var str = ""
    
    for i in 0...9 {
        for j in 0...9 {
            str += "\(BINOMIAL_TABLE[i][j])  "
        }
        str += "\n"
    }
    print(str)
}

func printPoissonTable(){
    print("POISSON TABLE\n")
    
    var str = ""
    
    for i in 0...9 {
        for j in 0...9 {
            str += "\(POISSON_TABLE[i][j])  "
        }
        str += "\n"
    }
    print(str)
}
