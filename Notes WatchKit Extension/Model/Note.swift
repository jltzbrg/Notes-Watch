//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Julio Litzenberg on 31.05.22.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
