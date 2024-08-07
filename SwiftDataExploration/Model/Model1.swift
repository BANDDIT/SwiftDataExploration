//
//  Model1.swift
//  SwiftDataExploration
//
//  Created by Arrick Russell Adinoto on 06/08/24.
//
/*
import Foundation
import SwiftData

@Model
class Model1{
    let id: UUID = UUID()
    var num:Int
    
    init(num:Int){
        self.num = num
    }
}

*/
/*
import SwiftData

@Model
struct Model1 {
    @Attribute(.primaryKey) var id: UUID = UUID()
    @Attribute(.required) var num: Int
}

*/
import SwiftData
import Foundation

@Model
class Model1 {
    @Attribute var id: UUID
    @Attribute var num: Int
    
    init(id: UUID = UUID(), num: Int) {
        self.id = id
        self.num = num
    }
}
