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
    "Tercer elemento"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("To Do List 📌")
        .navigationBarItems(leading: EditButton(), trailing:
        NavigationLink("Add", destination: AddView())
        )
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


