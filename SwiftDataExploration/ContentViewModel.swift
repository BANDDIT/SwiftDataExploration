//
//  ContentViewModel.swift
//  SwiftDataExploration
//
//  Created by Arrick Russell Adinoto on 06/08/24.
//

import SwiftData
import Foundation

class ContentViewModel: ObservableObject {
    var modelContext: ModelContext?
    
    @Published var allItems: [Model1] = []
    
    func addData(value: Int) {
        let model = Model1(num: value)
        modelContext?.insert(model)
    }
    
    func readData(){
        let descriptor = FetchDescriptor<Model1>()
        do {
            let fetchedModel = try modelContext?.fetch(descriptor) ?? []
            /*
            for item in fetchedModel{
                print(item.num)
            }
            print("=========")
             */
            allItems = fetchedModel
            
        } catch {
            print("Error/ContextViewModel/updateItem : Failed to Fetch")
        }
    }
    
    func updateItem(index:Int, value:Int){
        guard index < allItems.count else {
            print("Error/ContextViewModel/updateItem : Index is out of range")
            return
        }
        allItems[index].num = value
    }
    
    func removeItem(index: Int) {
        guard index < allItems.count else {
            print("Error/ContextViewModel/removeItem : Index is out of range")
            return
        }
        
        let model = allItems[index]
        allItems.remove(at: index)
        modelContext?.delete(model)
    }
}


