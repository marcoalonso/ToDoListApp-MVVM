//
//  ListView.swift
//  ToDoList
//
//  Created by marco rodriguez on 27/06/22.
// https://www.youtube.com/watch?v=EPdivac0kwE

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
    "Primer elemento!",
    "Segundo elemento",
    "Tercer elemento",
    "Estudiar SwiftUI"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("To Do List 📌")
        .navigationBarItems(leading: EditButton(), trailing:
        NavigationLink("Add", destination: AddView())
        )
        
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


