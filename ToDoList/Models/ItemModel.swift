//
//  ItemModel.swift
//  ToDoList
// https://www.youtube.com/watch?v=SMt4_WUdKag&t=0s
//  Created by marco rodriguez on 28/06/22.
//

import Foundation

//Inmutable Struct
struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompetion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}


