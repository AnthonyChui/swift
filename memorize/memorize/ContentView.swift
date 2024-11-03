//
//  ContentView.swift
//  memorize
//
//  Created by Anthony Chui on 11/3/24.
//

import SwiftUI

struct ContentView: View {
    //some View type is any struct in the world as long as it behaves as a view
    var body: some View { //curly braces make a computed property
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View{
    var isFaceUp: Bool = false
    var body: some View{
        ZStack {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("🤩").font(.largeTitle)
            }
            else{
                RoundedRectangle(cornerRadius: 12)
            }
        }
    }
}














#Preview {
    ContentView()
}
