//
//  StudentsView.swift
//  Bookworm
//
//  Created by Om Preetham Bandi on 6/5/24.
//

import SwiftData
import SwiftUI

struct StudentsView: View {
    @Environment(\.modelContext) var modelContext
    @Query var students: [Student]

    var body: some View {
        NavigationStack {
            List(students) { student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add Students") {
                    let firstnames = ["Om Preetham", "Nirdesh", "Madhu Mohan", "Umadevi"]
                    let lastnames = ["Bandi", "B"]
                    
                    let firstname = firstnames.randomElement()!
                    let lastname = lastnames.randomElement()!
                    
                    let student = Student(id: UUID(), name: "\(firstname) \(lastname)")
                    
                    modelContext.insert(student)
                }
            }
        }
    }
}

#Preview {
    StudentsView()
}
