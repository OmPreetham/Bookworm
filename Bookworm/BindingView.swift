//
//  BindingView.swift
//  Bookworm
//
//  Created by Om Preetham Bandi on 6/5/24.
//

import SwiftUI

struct PushButton: View {
    let title: String
    @Binding var isOn: Bool
    
    var onColors = [Color.red, Color.brown]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(LinearGradient(colors: isOn ? onColors : offColors, startPoint: .top, endPoint: .bottom))
        .foregroundStyle(.white)
        .shadow(radius: isOn ? 5 : 0)
        .clipShape(.capsule)
    }
}

struct BindingView: View {
    @State private var rememberMe = false
    
    var body: some View {
        VStack {
            PushButton(title: "Remember Me", isOn: $rememberMe)
            Text(rememberMe ? "isOn" : "isOff")
                .padding()
        }
        .padding()
    }
}
#Preview {
    BindingView()
}
