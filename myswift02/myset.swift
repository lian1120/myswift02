//
//  myset.swift
//  myswift02
//
//  Created by user15 on 2017/9/11.
//  Copyright © 2017年 user15. All rights reserved.
//

import Foundation

//     Array => 1.有順序性(index) 2.元素可以重複
//       Set => 1.無順序性(index) 2.元素不會重複，如果有重複也不會報錯誤
//Dictionary => 1.無順序性(key->元素) 2.元素可以重複

//PHP的Array  可以玩到swift的array,set,dictionary


func myset(){
    var s1 = Set<Int>()  //Set, 元素為Int
    print(type(of:s1))
    print(s1.count)  //Set,可以使用array的概念來想像Set的結構
    
    s1.insert(123)  //新增資料
    s1.insert(456)
    s1.insert(789)
    print(s1.count)
    s1.insert(456)
    s1.insert(789)
    print(s1.count)
    s1.insert(70)
    s1.insert(54272)
    print(s1.description)
    s1.remove(789)  //移除資料
    print(s1)
    print(s1.popFirst()!)  //移除資料第一筆
    print(s1)
    for v in s1 {
        print(v)
    }
    
    
    
    //樂透
    var lotter = Set<Int>()
    for i in 0..<50 {
        lotter.insert(i)
    }
    print(lotter.description)  //印出內容
    
    //出樂透 1~49 選六個
    var lottery = Set<Int>()
    while lottery.count < 6 {
        lottery.insert(Int(arc4random_uniform(49)+1))
    }
    print(lottery)
    for v in lottery {  //尋訪set每一個內容
        print(v)
    }
    for v in lottery.sorted() {  //尋訪 經過排序的 set每一個內容
        print(v)
    }
    
    
    //iterator
    var iterator = lottery.makeIterator()
    while let v = iterator.next() {
        print(v)
    }
    }
