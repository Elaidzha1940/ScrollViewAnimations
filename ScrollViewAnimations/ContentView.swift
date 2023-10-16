//  /*
//
//  Project: ScrollViewAnimations
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.10.2023
//
//  */

import SwiftUI

struct ContentView: View {
    let cards = [CardItem(id: 0), CardItem(id: 1), CardItem(id: 2), CardItem(id: 3)]
    
    var body: some View {
        
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(cards) { card in
                    RoundedRectangle(cornerRadius: 20)
                         .fill(.ultraThickMaterial)
                         .stroke(.white)
                         .frame(width: 350, height: 500)
                        .containerRelativeFrame(.horizontal)
                        .scrollTransition(axis: .horizontal) { content, phase in
                            content
                                .rotation3DEffect(.degrees(phase.value * -30), axis: (x: phase.value, y: 1, z: 0))
                                .scaleEffect(x: phase.isIdentity ? 1 : 0.8, y: phase.isIdentity ? 1 : 0.8 )
                        }
                }
            }
        }
        .preferredColorScheme(.dark)
        .scrollIndicators(.hidden)
        .contentMargins(20)
        .background(LinearGradient(colors: [.white, .black.opacity(0.4)], startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    ContentView()
}


struct CardItem: Identifiable {
    var id: Int
}
