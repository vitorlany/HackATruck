//
//  ContentView.swift
//  desafio01f
//
//  Created by student on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("hackatruck")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("HackaTruck")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
            
            HStack {
                Text("Maker")
                    .fontWeight(.black)
                    .foregroundColor(Color.yellow)
                
                Text("Space")
                    .fontWeight(.black)
                    .foregroundColor(Color.red)
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
