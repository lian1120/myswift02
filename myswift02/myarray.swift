//
//  myarray.swift
//  myswift02
//
//  Created by user15 on 2017/9/6.
//  Copyright © 2017年 user15. All rights reserved.
//

import Foundation
func myarray(){
    let a1 = [5,6,7,8]      //Swift自動推斷資料型別=>Array<Int>
    print(type(of:a1))
    let a2:[Any] = [4,3,2,"Ribeka"]     //:[] => 陣列[型態]
    print(type(of:a2))
    print(a2)
    print(a1[0])
    print("-----uuuuu-----")
    
    //以下為宣告方式，全部有一樣的效果
    let ary1:[Int] = []
    let ary2:[Int] = Array()
    
    //:Array<Int>  <Int>:泛型，具有繼承多型的效果
    let ary3:Array<Int> = []
    
    let ary4:Array<Int> = Array()
    let ary5 = Array<Int>.init()
    
    let ary6:[Int] = [1,2,3]
    if ary6.isEmpty { print("Empty")}
    else{print("not Empty: \(ary6.count)")}
    print("-----uuuuu-----")
    
    let ary7 = Array(repeating:3, count: 6)
    print(ary7.description)
    print(ary7)
    
    //尋訪ary7，印出ary7每一個元素的值
    for v in ary7{
        print(v)
    }
    
    //變數v可變更為a
    for a in ary7{
        print(a)
    }
    
    //擲骰子：100次，統計各點出現次數
    var dice = Array(repeating:0,count:6);      //dice[0]=0,dice[1]=0,dice[2]=0,dice[3]=0,dice[4]=0,dice[5]=0
    var point = -1;
    print("ok")
    for _ in 1...100{
        point = Int(arc4random_uniform(6))
        dice[point] += 1
    }
    print(dice.description)
    
    for v in dice{
        print(v)
    }
    print("以下 印出陣列每一個：索引:值")
    for i in 0 ..< dice.count {
        print("\(i+1)點出現\(dice[i])次")
    }
    for (i,value) in dice.enumerated(){
        print("\(i+1)點出現\(value)次")
    }
    print("-----以下印出 陣列 特定的索引 的內容-----")
    print(dice[0])
    print(dice.first!)
    print(dice[dice.count - 1])
    print(dice.last!)
    
    
    print("-----以下印出陣列如何新增元素-----")
    print(dice.description)
    dice += [100]
    print(dice.description)
    dice += [101,102,103]
    print(dice.description)
    
    dice.append(109)
    print(dice.description)

    dice.append(contentsOf: [200,201,202])
    print(dice.description)
    
    
    dice.insert(300, at: 7)
    print(dice.description)
    
    dice.insert(400, at:0)
    dice.insert(401, at:0)
    dice.insert(402, at:0)
    print(dice.description)
    
    dice.remove(at:1)
    print(dice.description)
    
    dice.replaceSubrange(1...5, with:[500])
    print(dice.description)
    
    dice[3...6] = [501,502,503]
    print(dice.description)
    
    dice[2...4] = []        //移除 陣列指定索引的元素
    print(dice.description)
    
    dice.reverse()      //反轉陣列內容
    print(dice.description)
    
    var p2 = dice       //複製一份dice的內容給 新的變數p2。在java中，寫這一行程式，就是dice與p2兩個變數，同時指向同一個記憶體位置，之後更新dice內容，也會變動p2內
    print(type(of:p2))
    print(p2.description)
    dice[2] = 700
    p2 += [800]
    print(dice.description)
    print(p2.description)
}
