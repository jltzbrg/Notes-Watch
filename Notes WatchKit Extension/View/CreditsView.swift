//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by Julio Litzenberg on 01.06.22.
//

import SwiftUI

struct CreditsView: View {
    //MARK: - Property
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    //MARK: - Body
    var body: some View {
        VStack {
            // Profile Image
            Image("developer-no1")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            // Header
            HeaderView(title: "Credits")
            // Content
            Text("Julio Litzenberg")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Swift Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        }//: endOf - VStack
    }
}

//MARK: - Preview

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
