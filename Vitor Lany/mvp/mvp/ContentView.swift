//
//  ContentView.swift
//  mvp
//
//  Created by student on 19/04/23.
//

import SwiftUI

struct Exercicio: Hashable {
    var nome: String
    var series: Int
    var carga: Double
    var anotacao: String
    var foto: String
}

struct Ficha: Hashable {
    var nome: String
    var exercicios: [Exercicio]
}

struct ContentView: View {
    var resposta = [
        Ficha(
            nome: "Tríceps & Biceps",
            exercicios: [
                Exercicio(nome: "Rosca reta direta", series: 3, carga: 15, anotacao: "Anotação", foto: "https://grandeatleta.com.br/wp-content/uploads/2018/07/rosca-direta-barra-reta-ou-w.jpg")
            ]
        )
    ]
    var body: some View {
        NavigationView {
            List(resposta, id: \.self) { ficha in
                NavigationLink(ficha.nome) {
                    ListaExercios(exercicios: ficha.exercicios)
                }
            }
            .navigationTitle("Fichas")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
