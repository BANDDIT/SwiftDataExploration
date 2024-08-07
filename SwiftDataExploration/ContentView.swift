//
//  ContentView.swift
//  SwiftDataExploration
//
//  Created by Arrick Russell Adinoto on 06/08/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var context
    
    @StateObject var viewModel:ContentViewModel =
    ContentViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button("Add Data"){
                viewModel.addData(value:20)
            }
            
            Button("Read Data"){
                viewModel.readData()
            }
            
            Button("Update Data"){
                viewModel.updateItem(index:0, value:100)
            }
            
            
            Button("Delete Data"){
                viewModel.removeItem(index: 0)
            }
        }
        .padding()
        .onAppear{
            viewModel.modelContext = context
        }
    }
}

#Preview {
    ContentView()
}
