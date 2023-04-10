//
//  ContentView.swift
//  desafio03
//
//  Created by student on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var inputText: String = "Visitante"
    @State private var showAlert = false
    
    var body: some View {
        VStack() {
                
            Text("Bem vindo, \(inputText)")
                .font(.title)
            
            TextField("Insira", text: $inputText)
                .padding()
            
            Image("hackatruck")
                .resizable()
                .frame(width: 250.0, height: 250.0)
                .aspectRatio(contentMode: .fit)
            
            Button("Texto") {
                showAlert = true
            }.alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Titulo"),
                    message: Text("Seu nome é: \(inputText)")
                )
            }

            
        }.background(
            Image("hackatruck")
                .blur(radius: 5)
                .opacity(0.2)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
