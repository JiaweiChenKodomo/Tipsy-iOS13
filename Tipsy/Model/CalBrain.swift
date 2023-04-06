//
//  calBrain.swift
//  Tipsy
//
//  Created by Jiawei Chen on 4/6/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct CalBrain {
    var tipPct: Float?
    var splitNo: Double?
    var bill: Float?
    
    func returnSplitNo() -> String {
        return String(format: "%d", Int(splitNo ?? 2))
    }
    
    func returnPay() -> String {
        let billSafe = bill ?? 0.0
        let tipPctSafe = tipPct ?? 0.1
        let splitNoSafe = splitNo ?? 2.0
        
        let value = (billSafe) * (1 + (tipPctSafe)) / Float(splitNoSafe)
        return String(format: "%.2f", value)
    }
    
    func returnPay2() -> String {
        return String(format: "Split between %d people, with \(Int((tipPct ?? 0.1) * 100))%% tip.", Int(splitNo ?? 2.0))
    }
}
