//
//  main.swift
//  binomial_poisson_calculator
//
//  Created by Bertuğ Yılmaz on 10.05.2018.
//  Copyright © 2018 Bertuğ Yılmaz. All rights reserved.
//

import Foundation

createBinomTable()
createPoissonTable()

while (RUNNING) {
    print("Binom değerini hesaplamak için 1, \nPoisson değerini hesaplamak için 2, \nTabloları yazdırmak için 3,\nçıkış yapmak için herhangi bir tuşa a basınız.. \n")
    let choose = readLine()!
    
    if choose == String(1) {
        
        print("p değerini giriniz: ")
        let p = readLine()!
        print("x değerini giriniz: ")
        let x = readLine()!
        print("n değerini giriniz: ")
        let n = readLine()!
        
        guard let pp = Double(p), let xx = Int(x), let nn = Int(n) else {
            print("Yanlış bir değer girdiniz.")
            continue
        }
        
        print("\(calcBinomialValue(p: pp, x: xx, n: nn)) \n\n")
        
    }else if choose == String(2) {
        print("l değerini giriniz: ")
        let l = readLine()!
        print("x değerini giriniz: ")
        let x = readLine()!
        
        guard let ll = Double(l), let xx = Int(x) else {
            print("Yanlış bir değer girdiniz.\n\n\n")
            continue
        }
        
        print("\(calcPoissonValue(l: ll, x: xx)) \n\n")
    }else if choose == String(3){
        printBinomTable()
        print("-------------------------------------------------------------")
        printPoissonTable()
    }else {
        RUNNING = false
    }
}


