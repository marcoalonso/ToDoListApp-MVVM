//
//  ListViewModel.swift
//  ToDoList
//
//  Created by marco rodriguez on 28/06/22.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
       let newItems = [
        ItemModel(title: "Estudiar SWIFTUI", isCompleted: false),
        ItemModel(title: "Curso de Udemy", isCompleted: false),
        ItemModel(title: "Curso de Udemy Petras", isCompleted: true),
        ItemModel(title: "SWIFTUI Bootcamp on YT", isCompleted: false)
       ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel){
        
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompetion()
        }
    }
}
