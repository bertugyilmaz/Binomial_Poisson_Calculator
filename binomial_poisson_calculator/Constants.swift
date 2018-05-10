//
//  Constants.swift
//  binomial_poisson_calculator
//
//  Created by Bertuğ Yılmaz on 10.05.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

let N = 10
let E = 2.711828

var RUNNING = true

let BINOMIAL_P_VALUES: [Double] = [0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5]
let POISSON_L_VALUES: [Double] = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0]

var POISSON_TABLE = [[Double]](repeating: [Double](repeating: 0, count: 10), count: 10)
var BINOMIAL_TABLE = [[Double]](repeating: [Double](repeating: 0, count: 10), count: 10)
