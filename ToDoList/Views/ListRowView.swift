//
//  ListRowView.swift
//  ToDoList
//
//  Created by marco rodriguez on 27/06/22.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "Primer elemento!")
            .previewLayout(.sizeThatFits)
    }
}
