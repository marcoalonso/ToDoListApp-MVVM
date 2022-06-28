//
//  AddView.swift
//  ToDoList
//
//  Created by marco rodriguez on 27/06/22.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack (alignment: .center, spacing: 10) {
                TextField("Type some here ...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(uiColor: .systemMint))
                    .shadow(radius: 12)
                .cornerRadius(11)
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(width: .infinity, height: 55, alignment: .center)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        .shadow(radius: 12)
                })

            }
            .padding(15)
        }
        .navigationTitle("Add an Item ✍🏽")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        
    }
}
