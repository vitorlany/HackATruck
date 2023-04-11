//
//  ContentView.swift
//  desafio05
//
//  Created by student on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                Text("Azul").tabItem {
                    Text("Azul")
                    Image(systemName: "trash.square.fill")
                }
                
                Text("Amarelo").tabItem {
                    Text("Amarelo")
                    Image(systemName: "scribble")
                }
                
                Text("Verde").tabItem {
                    Text("Verde")
                    Image(systemName: "externaldrive.fill.badge.icloud")
                }.badge(5)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
