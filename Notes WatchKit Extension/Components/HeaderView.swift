//
//  HeaderView.swift
//  Notes WatchKit Extension
//
//  Created by Julio Litzenberg on 01.06.22.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - Property
    var title: String = ""
    //MARK: - Body
    var body: some View {
        VStack {
            // Title
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            
            // Separator
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
                
            }//: endOf - HStack
            .foregroundColor(.accentColor)
        }//: endOf - VStack
    }
}

//MARK: - Preview
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(title: "Credits")
            
            HeaderView()
        }
    }
}
