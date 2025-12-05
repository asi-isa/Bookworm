//
//  EmojiRatingView.swift
//  Bookworm
//
//  Created by Ali Soner Inceoglu on 05.12.25.
//

import SwiftUI

struct EmojiRatingView: View {
    var rating: Int
    
    var body: some View {
        switch rating {
        case 1:
            Text("🙃")
        case 2:
            Text("👍🏿")
        case 3:
            Text("😎")
        case 4:
            Text("✌🏿")
        case 5:
            Text("🔥")
        default:
            fatalError("Shouldnt happen.")
        }
    }
}

#Preview {
    EmojiRatingView(rating: 3)
}
