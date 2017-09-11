//
//  poker.swift
//  myswift02
//
//  Created by user15 on 2017/9/8.
//  Copyright © 2017年 user15. All rights reserved.
//

import Foundation
func poker(){
    var poker:[Int] = Array()
    let n = 52
    for i in 0..<n {
        poker += [i]
    }
    print("--- 以下印出 依順序的poker")
    print(poker.description)
    
    let newPoker = shuffle(source: poker)
    print("--- 以下印出 呼叫shuffle方法(洗牌後)的poker")
    print(newPoker.description)
    
    //分牌給四個玩家
    var players:[[Int]] = [ [],[],[],[] ]
    for (i,card) in newPoker.enumerated() {
        players[i % 4] += [card]
    }
    print("--- 以下印出 玩家拿到發牌後的牌")
    print(players.description)
    
    //一個玩家一列，印出拿到的牌
    print("--- 以下印出 每一行是每一家拿到的牌")
    for i in 0..<players.count {
        for card in players[i] {
            print("\(card)", terminator:"   ")
        }
        print()
    }
    
    //將玩家拿到的牌給，紅磚﹦diamond，紅心﹦heart，黑桃﹦spade，紅磚﹦club
    print("--- 以下印出 每一行是每一家拿到 有花色的牌")
    let suits = ["黑桃","紅心","紅磚","梅花"]
    let values = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    for i in 0..<players.count {
        //理牌
        players[i].sort()
        for card in players[i] {
            print("\(suits[card/13])\(values[card%13])", terminator:" ")
        }
        print()
    }

}

//自訂function，功能是洗牌
func shuffle(source:Array<Int>) -> Array<Int> {
    var poker = source
    let n = poker.count
    var rand = -1
    var temp = -1
    var max = -1
    
    for i in 0..<n {
        max = n - i
        
        //arc4random_uniform接受UInt32型別的參數，回傳也是UInt
        //但是poker[]是array:[Int],需要再次轉換型別
        rand = Int(arc4random_uniform(UInt32(max)))
        
        //swap: poker[rand] <-> poker[last]
        temp = poker[rand]
        poker[rand] = poker[max - 1]
        poker[max - 1] = temp
    }
    return poker
}
