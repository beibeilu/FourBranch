//
//  BaZi.swift
//  FourBranch
//
//  Created by Beibei Lu on 2/25/18.
//  Copyright © 2018 Beibei Lu. All rights reserved.
//

import Foundation

public class BaZi {
    var nianGan, yueGan, riGan, shiGan: TianGan
    var nianZhi, yueZhi, riZhi, shiZhi: DiZhi
    
    init(nianGan: TianGan,
         nianZhi: DiZhi,
         yueGan: TianGan,
         yueZhi: DiZhi,
         riGan: TianGan,
         riZhi: DiZhi,
         shiGan: TianGan,
         shiZhi: DiZhi) {
        self.nianGan = nianGan
        self.nianZhi = nianZhi
        self.yueGan = yueGan
        self.yueZhi = yueZhi
        self.riGan = riGan
        self.riZhi = riZhi
        self.shiGan = shiGan
        self.shiZhi = shiZhi
    }
}
