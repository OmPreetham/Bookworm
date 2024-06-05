//
//  Student.swift
//  Bookworm
//
//  Created by Om Preetham Bandi on 6/5/24.
//

import Foundation
import SwiftData

@Model
class Student {
    var id: UUID
    var name: String

    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
