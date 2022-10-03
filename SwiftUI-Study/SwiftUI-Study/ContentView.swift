//
//  ContentView.swift
//  SwiftUI-Study
//
//  Created by Sillas Santos on 14/09/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🍏","🍎","🍊", "🍉", "🍑", "🥝", "🥥", "🍏","🍎","🍊", "🍉", "🍑", "🥝", "🥥"]
    var emojiCount = 6
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }
            Button(action: {}) {
                VStack {
                    Text("Add")
                    Text("Card")
                }
            }
            Button(action: {}) {
                VStack {
                    Text("Remove")
                    Text("Card")
                }
            }
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 20)
        ZStack {
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
