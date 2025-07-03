//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Antonio Druzo Rocha Neto on 03/07/25.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    // MARK: - Random coordinate
    private func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    // MARK: - Random size
    private func randomSize() -> CGFloat {
        return CGFloat.random(in: 4...80)
    }
    
    // MARK: - Random scale
    func randomScale() -> CGFloat {
        return CGFloat.random(in: 0.1...2.0)
    }
    
    // MARK: - Random Speed
    func randomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    
    // MARK: - Random delay
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            ForEach(0..<randomCircle, id: \.self) { item in
                Circle()
                    .foregroundStyle(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ) {
                            isAnimating = true
                        }
                    }
            }
        }
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
        MotionAnimationView()
        .background(Circle()
            .fill(.teal)
        )
}
