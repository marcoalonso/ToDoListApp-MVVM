//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by marco rodriguez on 27/06/22.
//

import SwiftUI
/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages model for View
 */

@main
struct ToDoListApp: App {
    
    @StateObject  var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
