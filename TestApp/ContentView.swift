//
//  ContentView.swift
//  TestApp
//
//  Created by Dinuka Perera on 2023-12-28.
//

import SwiftUI

enum Emoji: String, CaseIterable{
    case 😂,🥰,😗,😇
}

struct ContentView: View {
    @State var selection: Emoji = .😂
    
    var body: some View {
        NavigationStack{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select Emoji", selection:$selection) {
                    ForEach(Emoji.allCases, id: \.self) {emoji in Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("The Emoji set")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
