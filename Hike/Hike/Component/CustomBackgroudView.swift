//
//  CustomBackgroudView.swift
//  Hike
//
//  Created by Antonio Druzo Rocha Neto on 23/06/25.
//

import SwiftUI

struct CustomBackgroudView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. Deth
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            // MARK: - 2. Light
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            // MARK: - 1. Surface
            LinearGradient(
                colors: [Color.customGreenLight, Color.customGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroudView()
        .padding()
}
