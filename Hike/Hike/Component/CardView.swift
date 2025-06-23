//
//  CardView.swift
//  Hike
//
//  Created by Antonio Druzo Rocha Neto on 23/06/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARTK: - 1. Header
        // MAR
        ZStack {
            CustomBackgroudView()
            VStack {
                // MARK: - 2. Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .font(.system(size: 52, weight: .black))
                            .foregroundStyle(LinearGradient(colors: [.customGrayLight, .customGrayMedium],
                                                            startPoint: .top,
                                                            endPoint: .bottom))
                        Spacer()
                        Button {
                            print("button tapped")
                        } label: {
                            CustomButtonView()
                                
                        }
                    }
                    Text ("Fun and enjoyable outdoor activity that involves walking in nature, often on trails or paths.")
                    .multilineTextAlignment(.leading)
                    .italic()
                    .foregroundStyle(Color.customGrayMedium)
                }
                .padding(.horizontal, 30)

                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [Color("ColorIndigoMedium"),
                                         Color("ColorSalmonLight")],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
//                .padding()
            }
        }
        .padding(.vertical, 32)
        .padding(.horizontal, 16)
        
    }
}

#Preview {
    CardView()
}
