//
//  Extensions.swift
//  binomial_poisson_calculator
//
//  Created by Bertuğ Yılmaz on 10.05.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

extension Double {
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
