//
//  ContentView.swift
//  Notes WatchKit Extension
//
//  Created by Julio Litzenberg on 31.05.22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Property
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    //MARK: - Functions
    
    //MARK: - Body
    
    var body: some View {
        
        VStack {
            HStack(alignment: .center, spacing: 6) {
                TextField("Add New Note", text: $text)
                
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 42, weight: .semibold))
                }
                .fixedSize()
                .foregroundColor(.accentColor)
                .buttonStyle(PlainButtonStyle())
                //.buttonStyle(BorderedButtonStyle(tint: .accentColor))
            }//: HStack
        }//: VStack
        .navigationTitle("Notes")
    }
}

//MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
