//
//  ContentView.swift
//  fungicolous
//
//  Created by minami on 2026/10/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{geometry in
            ZStack {
                Image("TitleImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width:geometry.size.width,height: geometry.size.height)
                    .clipped()
                
                Text("Fungicolous fungi").font(.largeTitle).fontWeight(.bold).foregroundStyle(.white).shadow(color:.black.opacity(0.7),radius: 5)
            }
            .frame(
                width:geometry.size.width,
                height:geometry.size.height
            )
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
