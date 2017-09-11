//
//  mystring.swift
//  myswift02
//
//  Created by user15 on 2017/9/8.
//  Copyright © 2017年 user15. All rights reserved.
//

import Foundation
func mystring () {
    var name = "謝尚霖"
    print(type(of:name))
    
    name += "PeterAllan"
    print(name)
    
    //把string的每一自字元，印出
    for c in name.characters {
        print(c)
    }
    
    //print("--字串的計數---")
    let capitalA = "ABCDE"
    print(capitalA.unicodeScalars.count)
    print(capitalA.utf16.count)
    print(capitalA.utf8.count)
    
    print("-----")
    var nameabc = "CoCo北極熊"
    for c in nameabc.characters {
        print(c)
    }
    
    print("--謝尚霖PeterAllan---")
    let chars = Array(name.characters)
    print(type(of:chars))
    print(chars.count)
    print(chars[0])
    
    print("-----")
    let newname = String(chars)
    print(type(of:newname))
    print(newname)
    
    let cs1 = ["A","B","C","D"]
    print(type(of:cs1))
    let cs2:[Character] = ["A","B","C","D"]
    print(type(of:cs2))
    
    let ns2 = String(cs2)
    print(ns2)
    
    var letters = "abcdefghijklmnopqrstuvwxyz"
    print(letters)
    print(letters.unicodeScalars.count)
    
    let from = letters.index(letters.startIndex, offsetBy: 2)
    let to = letters.index(letters.startIndex, offsetBy: 5)
    print(from)
    print(to)
    let range = from..<to
    print(type(of:range))
    
    let r2 = 1..<4
    print(type(of:r2))
    
    print(letters.substring(with:range))
    
    //呼叫mysubstr，參數是字串、開始位置、結束位置，回傳字串
    print(mysubstr(source: letters, from: 4, to: 7))
    //第二版 mysubstr取出字串部份內容
    print(mysubstrv2(source:letters, from: 0,to: 26))
    //Third
    print(letters.substring(with: getStringRange(source:letters, from:4, to:9)))
    
    // string replaceSubrange()
    let range3 = getStringRange(source:letters, from:4, to:9)
    letters.replaceSubrange(range3, with: "1234")
    print(letters)
    
    // string removeSubrange()
    let r3 = getStringRange(source: letters, from: 20, to: 25)
    letters.removeSubrange(r3)
    print(letters)
}

func getStringRange(source:String, from:Int, to:Int) ->Range<String.Index>{
    //if(to < source.length);if(from > source.length);if(from < to);
    let start = source.index(source.startIndex, offsetBy: from)
    let end = source.index(source.startIndex, offsetBy: to)
    let range = start..<end
    return range
}

func mysubstr(source:String,from:Int, to:Int) -> String {
    let range = getStringRange(source: source, from: from, to: to)
    return source.substring(with:range)
}

func mysubstrv2(source:String,from:Int, to:Int) -> String {
    let cs = Array(source.characters)
    var ret = ""
    for i in from..<to {
        ret += String(cs[i])
    }
    return ret
}




//0911
func mystr2(){
    print("0911")
    let a = 10, b = 3
    if a > b {
        print("a = 10, b = 3, a > b => ok")
    }else{
        print("xxx")
    }
    
    let c = "10", d = "3"
    if c > d {
        print("ok")
    }else{
        print("c = '10', d = '3'  c > d =>xx")
    }
    // c = "1", d = "2", c < d
    // c = " ", d = "2", c < d
    // c = "3", d = "2", c > d
    // c = "234", d = "2", c > d
    
    //if判斷式 let a2 = a1，結果是nil。判斷式的值為false
    var a1:String?
    if let a2 = a1 {
        print("ok")
    }else{
        print("nil")
    }
    
    //if判斷式 let a22 = a11，結果有宣告成功。判斷式的值為ture
    var a11:String? = "Panda"
    if let a22 = a11 {
        print("type(of:a22)")
        print(type(of:a22))
        print("ok , a11:\(a11), a22:\(a22)")
    }else{
        print("nil")
    }
    print("==========")
    
    
    
    let twid = "A123456789"
    //回傳值是string.index
    let a3 = twid.range(of:"1234")
    print(a3)
    if let range = twid.range(of: "1234"){
        print("ok4")
    }else{
        print("xx4")
    }
    
    //regularExpression ^起始符號 $結尾符號，如果不加^$則是比對部份字串內容。
    if let range = twid.range(of: "^[A-Z][12][0-9]{8}$", options: .regularExpression){
        print("ok5")
    }else{
        print("xx5")
    }
    
    
}
