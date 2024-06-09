//
//  FormatCurrentDate.swift
//  Bookworm
//
//  Created by Om Preetham Bandi on 6/9/24.
//

import Foundation

extension Date {
    var currentDate: String {
        self.formatted(date: .abbreviated, time: .shortened)
    }
}
