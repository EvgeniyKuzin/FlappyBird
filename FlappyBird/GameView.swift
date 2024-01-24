//
//  GameView.swift
//  FlappyBird
//
//  Created by Evgeniy Kuzin on 23.01.2024.
//

import SwiftUI

struct GameView: View {
    
    private let birdPosition = CGPoint(x: 100, y: 300)
    private let topPipeHeight = CGFloat.random(in: 100...500)
    private let pipeWidth: CGFloat = 100
    private let pipeSpacing: CGFloat = 200
    private let pipeOffset: CGFloat = 0
    private let score: Int = 0
    
    var body: some View {
        GeometryReader { geo in
            NavigationStack {
                ZStack {
                    Image(.flappyBirdBackground)
                        .resizable()
                        .ignoresSafeArea()
                        .padding(.bottom, -50)
                        .padding(.trailing, -50)
                    
                    BirdView(birdSize: 80)
                        .position(birdPosition)
                    
                    PipeView(topPipeHeight: topPipeHeight,
                             pipeWidth: pipeWidth,
                             pipeSpacing: pipeSpacing)
                    .offset(x: geo.size.width + pipeOffset)
                }
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Text(score.formatted())
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .padding()
                    }
                }
            }
            
        }
    }
}

#Preview {
    GameView()
}
