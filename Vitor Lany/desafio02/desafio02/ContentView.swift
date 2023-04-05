//
//  ContentView.swift
//  desafio02
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
            
            ZStack {
                Image("hackatruck")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                
                Text("HackaTruck")
                    .font(.title)
                    .foregroundColor(Color.white)
            }
            
            Text("MakerSpace")
                .frame(width: 300, height: 300)
                .foregroundColor(.red)
                .background(Color.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
