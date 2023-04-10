//
//  ContentView.swift
//  desafio04
//
//  Created by student on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var peso: Double = 60
    @State var altura: Double = 1.50
    @State var backgroundColor = Color.white
    @State var statusTexto: String = "Vazio"
    var body: some View {
        VStack {
            Spacer()
            
            Text("Calculadora IMC")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            TextField("Peso (kg)", value: $peso, format:.number)
                .textFieldStyle(.roundedBorder)
                .padding()

            TextField("Altura (cm)", value: $altura, format:.number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button("Calcular") {
                let calc: Double = peso / pow(altura, 2)
                switch calc {
                case 0...18.5:
                    backgroundColor = Color("baixo_peso")
                    statusTexto = "Baixo peso"
                case 18.5..<25:
                    backgroundColor = Color("normal")
                    statusTexto = "Normal"
                case 25..<30:
                    backgroundColor = Color("sobrepeso")
                    statusTexto = "Sobrepeso"
                default:
                    backgroundColor = Color("obesidade")
                    statusTexto = "Obesidade"
                }
            }
            
            Spacer();
            
            Text(statusTexto)
                .font(.title)
                .fontWeight(.medium)
            
            Spacer();
            
            Image("tabela")
                .resizable()
                .scaledToFit()
        }.background(backgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
