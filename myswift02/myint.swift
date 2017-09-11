//
//  myint.swift
//  myswift02
//
//  Created by user15 on 2017/9/6.
//  Copyright © 2017年 user15. All rights reserved.
//

import Foundation

func myint(){
    let Var1 = Int.init(123)
    print(Var1)
    
    let Var2:Int? = Int.init("Tony")
    print(Var2)
    print(Var2 as Any)
    print(Var2 ?? 0)
    
    let Var3 = Int.init()
    print(Var3)
    
    let Var4 = Int.init(12.34)
    print(Var4)
    
    let Var5 = Int.init("12",radix:16)
    print(Var5)
}
