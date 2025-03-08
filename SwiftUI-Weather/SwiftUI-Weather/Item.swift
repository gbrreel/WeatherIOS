//
//  Item.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Gallo on 08/03/25.
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
