//
//  Item.swift
//  TelegramIOS
//
//  Created by Mikhail Pryanichnikov on 11.04.2024.
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
