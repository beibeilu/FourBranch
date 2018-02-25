//
//  Helper.swift
//  FourBranch
//
//  Created by Beibei Lu on 2/25/18.
//  Copyright © 2018 Beibei Lu. All rights reserved.
//

import Foundation

public class Helper {
    func getTwelveGong(tianGan:Gan, diZhi:Zhi) -> TwelveGong {
        var index: Int
        switch tianGan {
        case .Jia:
            index = (diZhi.rawValue + 1) % 12
            return TwelveGong(rawValue: index)!
        case .Bing, .Wu:
            index = (diZhi.rawValue + 10) % 12
            return TwelveGong(rawValue: index)!
        case .Geng:
            index = (diZhi.rawValue + 10) % 12
            return TwelveGong(rawValue: index)!
            
        case .Yi:
            <#code#>
        case .Ding:
            <#code#>
        case .Ji:
            <#code#>
        case .Xin:
            <#code#>
        case .Ren:
            <#code#>
        case .Gui:
            <#code#>
        }
    }
}

