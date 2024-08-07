//
//  SwiftDataExplorationApp.swift
//  SwiftDataExploration
//
//  Created by Arrick Russell Adinoto on 06/08/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataExplorationApp: App {
    var container:ModelContainer

    init(){
        do{
            //Format :  ModelA.self, ModelB.self, .....
            let config = ModelConfiguration(for: Model1.self, Model2.self)
            //Format :  ModelA.self, ModelB.self, ....., configurations:config
            container = try ModelContainer(for:Model1.self, Model2.self, configurations: config)
        }

        catch{
            fatalError("Failed to configure SwiftData container.")
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(container)
    }
}

