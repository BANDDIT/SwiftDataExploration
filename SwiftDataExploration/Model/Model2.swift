//
//  Model2.swift
//  SwiftDataExploration
//
//  Created by Arrick Russell Adinoto on 06/08/24.
//

import Foundation
import SwiftData

//Dummy Model
@Model
class Model2{
    let id: UUID = UUID()
    var text:String
    
    init(text:String){
        self.text = text
    }
}
