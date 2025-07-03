//
//  CardView.swift
//  Hike
//
//  Created by Antonio Druzo Rocha Neto on 23/06/25.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    // MARK: - Functions
    func generateRandomNumber() {
        while randomNumber == imageNumber {
            randomNumber = Int.random(in: 1...5)
        }
        imageNumber = randomNumber
        print("Random number generated: \(randomNumber)")
    }
    
    var body: some View {
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
                    CustomCircleView()  
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeInOut(duration: 1), value: imageNumber)
                }
                Button {
                    // Action generate a ramdom number
                    generateRandomNumber()
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(
                            colors: [.customGreenLight,.customGreenMedium],
                            startPoint: .top,
                            endPoint: .bottom))
                        .shadow(color: Color.black.opacity(0.25),
                                radius: 0.25,
                                x: 1, y: 2)
                }
                .buttonStyle(GradientButtonStyle())
            }
        }
        .padding(.vertical, 32)
        .padding(.horizontal, 16)	
        
    }
}

#Preview {
    CardView()
}
