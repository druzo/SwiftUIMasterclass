//
//  CusomListRowView.swift
//  Hike
//
//  Created by Antonio Druzo Rocha Neto on 04/07/25.
//

import SwiftUI

struct CusomListRowView: View {
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    @State var action: (() -> Void)? = nil
    
    var body: some View {
        LabeledContent {
            Button {
                print( "teste")
                action?()
            } label: {
                Text(rowContent ?? "")
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
                    
            }
            
//            Text(rowContent ?? "")
//                .fontWeight(.heavy)
//                .foregroundColor(.primary)
        } label: {
            HStack {
                ZStack
                {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)                    
                }
            
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List(0 ..< 1) { item in
        CusomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Druzo", rowTintColor: .pink)
    }
}
