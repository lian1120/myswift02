//
//  mydic.swift
//  myswift02
//
//  Created by user15 on 2017/9/11.
//  Copyright © 2017年 user15. All rights reserved.
//

import Foundation

//     Array => 1.有順序性(index) 2.元素可以重複
//       Set => 1.無順序性(index) 2.元素不會重複，如果有重複也不會報錯誤
//Dictionary => 1.無順序性(key->元素) 2.元素可以重複

func mydic(){
    //Dictionary宣告方法有三種：
    var d1:[Int:String] = [:]
    print(type(of:d1))
    
    var d2 = [Int:String]()
    print(type(of:d2))
    
    var d3:[Int:String] = Dictionary()
    print(type(of:d3))
    
    var d4:[Int:String] = [1:"a",2:"b",55:"a"]
    
    print(d4.count)
    print(d4)
    
    print(d4[1])  //指定 特定key 所對應的value
    print(d4[2]!)  //加上 !
    
    d4[3] = "allan"
    print(d4.count)
    
    d4[3] = "Tomcat"
    print(d4.count)
    print(d4)
    
    
    var d5:[String:Int] = [:]
    d5["weight"] = 80
    d5["age"] = 34
    d5["weight"] = 78
    d5["age"] = 46
    d5["weight"] = 68
    d5["age"] = 29
    d5["gender"] = 1
    d5["tall"] = 183
    print(d5)
    
    for (k,v) in d5 {
        print("\(k) : \(v)")
    }
    
    for k in d5.keys {
        print(k)  //印出key
    }
    for v in d5.values {
        print(v)  //印出value
    }
    
    //單純尋訪key
    if let v = d5["tall"] {
        print(v)
    }else{
        print("nothing")
    }
    
    //單純尋訪value
    let isExist = d5.values.contains(183)
    print(isExist)

    
    
    
    
    //line  p1(x,y)  p2(x,y) ... pn(x,y)畫線
    var line:[[String:Int]] = Array()  //外面資料結構是陣列，裡面是Dictionary
    print(type(of:line))
    
    line += [["X":12, "Y":100]]
    line += [["X":13, "Y":101]]
    line += [["X":14, "Y":102]]
    line += [["X":15, "Y":103]]
    line += [["X":16, "Y":104]]
    print(line)
    
    for point in line {
        var x = point["X"]
        var y = point["Y"]
        print("(\(x!) : \(y!))")
    }
}
