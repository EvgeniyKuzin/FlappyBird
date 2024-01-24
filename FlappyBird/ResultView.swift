//
//  ResultView.swift
//  FlappyBird
//
//  Created by Evgeniy Kuzin on 23.01.2024.
//

import SwiftUI

struct ResultView: View {
    
    let score: Int
    let highScore: Int
    let resetAction: () -> Void
    
    var body: some View {
        VStack {
            Text("Game over")
                .font(.largeTitle)
                .padding()
            Text("Score \(score)")
                .font(.title)
            Text("Best \(highScore)")
                .padding()
            Button("Reset", action: resetAction)
                .buttonStyle(.borderedProminent)
                .padding()
        }
        .background(.white.opacity(0.8))
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    ResultView(score: 10, highScore: 100, resetAction: {} )
}
