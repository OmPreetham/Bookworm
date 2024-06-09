//
//  EmojiRatingView.swift
//  Bookworm
//
//  Created by Om Preetham Bandi on 6/6/24.
//

import SwiftUI

struct EmojiRatingView: View {
    let rating: Int

    var body: some View {
        switch rating {
        case 1:
            Text("😾")
                .background(Color.red)
        case 2:
            Text("😿")
        case 3:
            Text("😼")
        case 4:
            Text("😽")
        default:
            Text("😻")
        }
    }
}

#Preview {
    EmojiRatingView(rating: 3)
}
