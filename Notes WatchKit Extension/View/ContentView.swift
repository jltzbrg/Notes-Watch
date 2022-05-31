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
    
    //MARK: - Function
    func save() {
        dump(notes)
    }
    
    //MARK: - Body
    
    var body: some View {
        
        VStack {
            HStack(alignment: .center, spacing: 6) {
                TextField("Add New Note", text: $text)
                
                Button {
                    // 1. Only run the button action when the textfield is not empty
                    guard text.isEmpty == false else { return }
                    
                    // 2. Create new note item and initialize it with the text value
                    let note = Note(id: UUID(), text: text)
                    
                    // 3. Add the new note item to the note array (append)
                    notes.append(note)
                    
                    // 4. Make the text field empty
                    text = ""
                    
                    // 5. Save the notes (function)
                    save()
                    
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 42, weight: .semibold))
                }
                .fixedSize()
                .foregroundColor(.accentColor)
                .buttonStyle(PlainButtonStyle())
                //.buttonStyle(BorderedButtonStyle(tint: .accentColor))
            }//: HStack
            
            Spacer()
            
            Text("\(notes.count)")
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
