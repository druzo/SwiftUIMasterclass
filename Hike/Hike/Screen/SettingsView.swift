//
//  SettingsView.swift
//  Hike
//
//  Created by Antonio Druzo Rocha Neto on 03/07/25.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        @Environment(\.openURL) var openURL
        List {
            Section {
                // MARK: - Header
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 88, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 88, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark],
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("WHere can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike wich looks gorgeus in photos but even better once you are actually there. The hike that you hope to do again someday. \nFinde the best day hekes in the app")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //: Header
            .listRowSeparator(.hidden)
            
            Section {
                // MARK: - Settings
                // Basic Labeled content
//                LabeledContent("Application", value: "Hike")
                // Advanced Labelled content
                
                CusomListRowView(rowLabel: "Application",
                                        rowIcon: "apps.iphone",
                                        rowContent: "Hike",
                                        rowTintColor: .blue)
                CusomListRowView(rowLabel: "Compatibility",
                                        rowIcon: "info.circle",
                                        rowContent: "Hike",
                                        rowTintColor: .red)
                CusomListRowView(rowLabel: "Technology",
                                        rowIcon: "swift",
                                        rowContent: "Swift",
                                        rowTintColor: .orange)
                CusomListRowView(rowLabel: "Developer",
                                        rowIcon: "ellipsis.curlybraces",
                                        rowContent: "Druzo",
                                 rowTintColor: .mint)
                CusomListRowView(rowLabel: "Version",
                                        rowIcon: "gear",
                                        rowContent: "1.0",
                                 rowTintColor: .purple)
                CusomListRowView(rowLabel: "Website",
                                        rowIcon: "globe",
                                        rowContent: "https://hike.com",
                                 rowTintColor: .indigo) {
                    print("Open website")
                    openURL(URL(string: "https://www.apple.com")!)
                }
            } header: {
                Text("Settings")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.customGreenMedium)
            } footer: {
                HStack {
                    Spacer()
                    Text("Copyright © 2025 Hike. All rights reserved.")
                    Spacer()
                }
                .padding(.vertical, 8)
            }
        }
    }
}

#Preview {
    SettingsView()
}
