//
//  StringIsEmpty.swift
//  Bookworm
//
//  Created by Om Preetham Bandi on 6/9/24.
//

import Foundation

extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
