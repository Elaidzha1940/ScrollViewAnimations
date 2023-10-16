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
    let cards = [CardItem(id: 0), CardItem(id: 1), CardItem(id: 2)]
    
    var body: some View {
        
        ScrollView {
         
            LazyHStack {
                ForEach(cards) { card in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.ultraThickMaterial)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}


struct CardItem: Identifiable {
    var id: Int
}
