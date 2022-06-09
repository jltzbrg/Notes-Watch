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
    
    //MARK: - Function
    func update() {
            lineCount = Int(value)
    }
    
    //MARK: - Body
    var body: some View {
        VStack(spacing: 8) {
            // Header
            HeaderView(title: "Setting")
            // Actual Line Count
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            // Slider
            Slider(value: Binding(get: {
                self.value
            }, set: { (newValue) in
                self.value = newValue
                self.update()
            }), in: 1...4, step: 1)
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
