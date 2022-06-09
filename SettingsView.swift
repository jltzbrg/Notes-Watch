//
//  SettingsView.swift
//  Notes WatchKit Extension
//
//  Created by Julio Litzenberg on 09.06.22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Property
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    //MARK: - Body
    var body: some View {
        VStack(spacing: 8) {
            // Header
            HeaderView(title: "Setting")
            // Actual Line Count
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            // Slider
            Slider(value: $value, in: 1...4, step: 1)
                .accentColor(.accentColor)
        }//: endOf - VStack
    }
}


//MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
