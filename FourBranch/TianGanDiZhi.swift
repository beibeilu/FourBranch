//
//  TianGanDiZhi.swift
//  FourBranch
//
//  Created by Beibei Lu on 2/25/18.
//  Copyright © 2018 Beibei Lu. All rights reserved.
//

import Foundation
import UIKit

// MARK:  天干
public enum Gan: Int, CustomStringConvertible {
    case Jia = 0, Yi, Bing, Ding, Wu, Ji, Geng, Xin, Ren, Gui
    
    public var description: String {
        switch self {
        case .Jia:      return "甲"
        case .Yi:       return "乙"
        case .Bing:     return "丙"
        case .Ding:     return "丁"
        case .Wu:       return "戊"
        case .Ji:       return "己"
        case .Geng:     return "庚"
        case .Xin:      return "辛"
        case .Ren:      return "壬"
        case .Gui:      return "癸"
        }
    }
    
    var element: Element {
        switch self {
        case .Geng, .Xin:       return .Jin
        case .Jia, .Yi:         return .Mu
        case .Ren, .Gui:        return .Shui
        case .Bing, .Ding:      return .Huo
        case .Wu, .Ji:          return .Tu
        }
    }
    
    var biValue: YinYang {
        switch self {
        case .Jia, .Bing, .Wu, .Geng, .Ren:     return .Yang
        case .Yi, .Ding, .Ji, .Xin, .Gui:       return .Yin
        }
    }
}

// MARK:  地支
public enum Zhi: Int, CustomStringConvertible  {
    case Zi = 0, Chou, Yin, Mao, Chen, Si, Wu, Wei, Shen, You, Xu, Hai
    static let allValue = [Zi, Chou, Yin, Mao, Chen, Si, Wu, Wei, Shen, You, Xu, Hai]
    
    public var description: String {
        switch self {
        case .Zi:       return "子"
        case .Chou:     return "丑"
        case .Yin:      return "寅"
        case .Mao:      return "卯"
        case .Chen:     return "辰"
        case .Si:       return "巳"
        case .Wu:       return "午"
        case .Wei:      return "未"
        case .Shen:     return "申"
        case .You:      return "酉"
        case .Xu:       return "戌"
        case .Hai:      return "亥"
        }
    }
    
    var element: Element {
        switch self {
        case .Shen, .You:                   return .Jin
        case .Yin, .Mao:                    return .Mu
        case .Zi, .Hai:                     return .Shui
        case .Si, .Wu:                      return .Huo
        case .Chou, .Chen, .Wei, .Xu:       return .Tu
        }
    }
    
    var biValue: YinYang {
        switch self {
        case .Zi, .Yin, .Chen, .Wu, .Shen, .Xu:
            return .Yang
        default:
            return .Yin
        }
    }
    
    var implicitGan: [Gan] {
        switch self {
        case .Chen:     return [.Wu, .Yi, .Gui]
        case .Wei:      return [.Ji, .Ding, .Yi]
        case .Xu:       return [.Wu, .Xin, .Ding]
        case .Chou:     return [.Ji, .Gui, .Xin]
        case .Yin:      return [.Jia, .Bing, .Wu]
        case .Si:       return [.Bing, .Geng, .Wu]
        case .Shen:     return [.Geng, .Ren, .Wu]
        case .Hai:      return [.Ren, .Jia]
        case .Zi:       return [.Gui]
        case .Mao:      return [.Yi]
        case .Wu:       return [.Ding, .Ji]
        case .You:      return [.Xin]
        }
    }
}

// MARK:  五行
public enum Element: Int, CustomStringConvertible {
    case Jin = 0, Mu, Shui, Huo, Tu
    
    public var description: String {
        switch self {
        case .Jin:      return "金"
        case .Mu:       return "木"
        case .Shui:     return "水"
        case .Huo:      return "火"
        case .Tu:       return "土"
        }
    }
    
    var color: UIColor {
        switch self {
        case .Jin:      return UIColor.orange
        case .Mu:       return UIColor.green
        case .Shui:     return UIColor.blue
        case .Huo:      return UIColor.red
        case .Tu:       return UIColor.brown
        }
    }
}

// MARK:  阴阳
public enum YinYang: Int, CustomStringConvertible {
    case Yin = -1, Yang = 1
    
    public var description: String {
        switch self {
        case .Yin:      return "阴"
        case .Yang:     return "阳"
        }
    }
}

// MARK:  长生十二宫
public enum TwelveGong: Int, CustomStringConvertible {
    
    case ChangSheng = 0, MuYu, GuanDai, LinGuan, DiWang, Shuai, Bing, Si, Mu, Jue, Tai, Yang
    
    public var description: String {
        switch self {
        case .ChangSheng:   return "长生"
        case .MuYu:         return "沐浴"
        case .GuanDai:      return "冠带"
        case .LinGuan:      return "临冠"
        case .DiWang:       return "帝旺"
        case .Shuai:        return "衰"
        case .Bing:         return "病"
        case .Si:           return "死"
        case .Mu:           return "墓"
        case .Jue:          return "绝"
        case .Tai:          return "胎"
        case .Yang:         return "养"
        }
    }
    
}

// MARK:  十神
public enum TenGod: Int, CustomStringConvertible {

//    case BiJian = 1
//    case JieCai = -1
//    case ShiShen = 2
//    case ShangGuan = -2
//    case ZhengCai = 3
//    case PianCai = -3
//    case ZhengGuan = 4
//    case QiSha = -4
//    case ZhengYin = 5
//    case PianYin = -5
//

    case BiJian = 0
    case JieCai = 1
    case ShiShen = 2
    case ShangGuan = 3
    case ZhengCai = 5
    case PianCai = 4
    case ZhengGuan = 7
    case QiSha = 6
    case ZhengYin = 9
    case PianYin = 8
//
//    case BiJian = 1
//    case JieCai = -1
//    case ShiShen = 2
//    case ShangGuan = -2
//    case ZhengCai = 3
//    case PianCai = -3
//    case ZhengGuan = 4
//    case QiSha = -4
//    case ZhengYin = 5
//    case PianYin = -5

    
    public var description: String {
        switch self {
        case .BiJian:       return "比肩"
        case .JieCai:       return "劫财"
        case .ShiShen:      return "食神"
        case .ShangGuan:    return "伤官"
        case .ZhengCai:     return "正财"
        case .PianCai:      return "偏财"
        case .ZhengGuan:    return "正官"
        case .QiSha:        return "七煞"
        case .ZhengYin:     return "正印"
        case .PianYin:      return "偏印"
        }
    }
}

// MARK: Class

public class TianGan {
    var tianGan: Gan
    init(tianGan: Gan) {
        self.tianGan = tianGan
    }
}

public class DiZhi {
    var diZhi: Zhi
    init(diZhi: Zhi) {
        self.diZhi = diZhi
    }
}



