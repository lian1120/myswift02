//
//  mytuple.swift
//  myswift02
//
//  Created by user15 on 2017/9/11.
//  Copyright © 2017年 user15. All rights reserved.
//

import Foundation

func tupletest(){
    print("==========")
    let p1 = (20, 34)  //tuple => 資料組 有Xcode自動推斷為(Int,Int)
    print(type(of:p1))
    print(p1.0)  //印出 tuple內容 第某個的值
    print(p1.1)  //印出 tuple內容 第某個的值
    
    let (x1, y1) = p1  //  既有的p1 賦予新的資料組(x1, y1)的值
    print(x1)
    print(y1)
    
    let p2 = (60,34)
    //不同資料組的比對，需要 型別一致，數量一致，才能做tuple比較大小
    if p1 > p2 {
        print("p1 > p2")
    }else{
        print("p1 < p2")
    }
    
    let p3 = (p1,p2)  //形成 資料組巢狀
    print(type(of:p3))
    print(p3.1.1)
    print("=========")
    
    let p4:(x:Double, y:String) = (1, "2")  //程式維護性比較好，x,y有意義
    print(p4.x)
    print(p4.0)
    
    let p5 = (x:44, y:"edu")
    print(p5.y)
}
