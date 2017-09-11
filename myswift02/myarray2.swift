//
//  myarray2.swift
//  myswift02
//
//  Created by user15 on 2017/9/7.
//  Copyright © 2017年 user15. All rights reserved.
//

import Foundation

func myarray2() {
    var ary1 = [[1],[2,3],[4,5,6]]
    print(type(of:ary1))        //自動推斷為Array<array<Int>>
    
    print(ary1.description)
    print(ary1[0].description)
    print(ary1.count)
    print(ary1[2].count)
    
    ary1 += [[11,22,33]]
    print(ary1.description)
    ary1[1] += [51,52]
    print(ary1.description)
    
    for (ii,vv) in ary1.enumerated {
        print("\(ii)-=-=-=-=")
        for (i,v) in vv.enumerated() {
            print("\(i) : \(v)")
        }
    }
    
}
