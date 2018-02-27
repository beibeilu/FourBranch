//
//  Helper.swift
//  FourBranch
//
//  Created by Beibei Lu on 2/25/18.
//  Copyright © 2018 Beibei Lu. All rights reserved.
//

import Foundation


public class Helper {

    //  MARK: 五行寄生十二宫表: 通过（天干，地支）查找到对应的长生十二宫。
    func getTwelveGongForTianGanDiZhiPair(tianGan:Gan, diZhi:Zhi) -> TwelveGong {
        var index: Int
        switch tianGan {
        case .Jia:
            index = (diZhi.rawValue + 1) % 12
            break
        case .Bing, .Wu:
            index = (diZhi.rawValue + 10) % 12
            break
        case .Geng:
            index = (diZhi.rawValue + 7) % 12
            break
        case .Ren:
            index = (diZhi.rawValue + 4) % 12
            break
        case .Yi:
            index = 12 - (diZhi.rawValue + 6) % 12
            break
        case .Ding, .Ji:
            index = 12 - (diZhi.rawValue + 3) % 12
            break
        case .Xin:
            index = 12 - (diZhi.rawValue + 12) % 12
            break
        case .Gui:
            index = 12 - (diZhi.rawValue + 9) % 12
            break
        }
        return TwelveGong(rawValue: index)!
    }
    
    //  MARK: 五阳干六亲表 & 五阴干六亲表: 查找`天干#2`对于`天干#1`的十神关系。
    func getTenGodForTianGan(firstTG: Gan, secondTG: Gan) -> TenGod{
        var index: Int = 0
        switch firstTG{
        case .Jia:
            index = (secondTG.rawValue + 0) % 10
            break
        case .Bing:
            index = (secondTG.rawValue + 8) % 10
            break
        case .Wu:
            index = (secondTG.rawValue + 6) % 10
            break
        case .Geng:
            index = (secondTG.rawValue + 4) % 10
            break
        case .Ren:
            index = (secondTG.rawValue + 2) % 10
            break
        case .Yi:
            index = (secondTG.rawValue + 9) % 10
            break
        case .Ding:
            index = (secondTG.rawValue + 7) % 10
            break
        case .Ji:
            index = (secondTG.rawValue + 5) % 10
            break
        case .Xin:
            index = (secondTG.rawValue + 3) % 10
            break
        case .Gui:
            index = (secondTG.rawValue + 1) % 10
            break
        }
        
        if firstTG.biValue == .Yin{
            switch index{
            case 1:
                index = 3
                break
            case 3:
                index = 5
                break
            case 5:
                index = 7
                break
            case 7:
                index = 9
                break
            case 9:
                index = 1
                break
            default:
                break
            }
        }
        return TenGod(rawValue: index)!
    }
    
    // MARK: 旺相休囚死: 查找五行在四时的状态
    func getElementStatusForElementAtSeason(for element: Element, at season: Season) -> ElementStatus {
        switch (element, season) {
        case (.Mu, .Chun), (.Huo, .Xia), (.Jin, .Qiu), (.Shui, .Dong), (.Tu, .SiJi):
            return .Wang
        case (.Huo, .Chun), (.Tu, .Xia), (.Shui, .Qiu), (.Mu, .Dong), (.Jin, .SiJi):
            return .Xiang
        case (.Shui, .Chun), (.Mu, .Xia), (.Tu, .Qiu), (.Jin, .Dong), (.Huo, .SiJi):
            return .Xiu
        case (.Jin, .Chun), (.Shui, .Xia), (.Huo, .Qiu), (.Tu, .Dong), (.Mu, .SiJi):
            return .Qiu
        case (.Tu, .Chun), (.Jin, .Xia), (.Mu, .Qiu), (.Huo, .Dong), (.Shui, .SiJi):
            return .Si
        }
    }
    
    /// TODO: 刑冲害化合
    
}

