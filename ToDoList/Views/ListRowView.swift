//
//  ListRowView.swift
//  ToDoList
//
//  Created by marco rodriguez on 27/06/22.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 10)
        .shadow(radius: 10)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "Ejemplo", isCompleted: false)
    static var item2 = ItemModel(title: "Ejemplo 2", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
            .previewLayout(.sizeThatFits)
    }
}
