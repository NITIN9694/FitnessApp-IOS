//
//  Item.swift
//  FitnessApp
//
//  Created by Nitin Jha on 08/01/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
