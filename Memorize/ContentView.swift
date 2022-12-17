//
//  ContentView.swift
//  Memorize
//
//  Created by Arturo Burigo on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var emojiCount = 4
     
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns:[GridItem(.adaptive(minimum:80))]){
                    ForEach( emojis[0..<emojiCount], id: \.self){ emoji in // Define cada x do array com o nome emoji
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }.foregroundColor(.red )
            }
        }
        .padding(.horizontal)
        
    }
        
}

struct CardView: View {
    var content : String
    @State var isFaceUp: Bool = true
    
    var body: some View{
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}


























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.preferredColorScheme(.dark)
    }
}
