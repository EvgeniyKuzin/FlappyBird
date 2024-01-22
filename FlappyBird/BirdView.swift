//
//  BirdView.swift
//  FlappyBird
//
//  Created by Evgeniy Kuzin on 23.01.2024.
//

import SwiftUI

struct BirdView: View {

    let birdSize: CGFloat

    var body: some View {
        Image(.flappyBird)
            .resizable()
            .scaledToFit()
            .frame(width: birdSize, height: birdSize)
    }
}

#Preview {
    BirdView(birdSize: 100)
}
