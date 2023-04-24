//
//  ListaExercios.swift
//  mvp
//
//  Created by student on 19/04/23.
//

import SwiftUI

struct ListaExercios: View {
    @State var exercicios: [Exercicio]
    var body: some View {
        ScrollView {
            ForEach(exercicios, id: \.self) { exercicio in
                VStack {
                    AsyncImage(url: URL(string: exercicio.foto)) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(8.0)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 250, height: 250)
                    
                    Text(exercicio.nome)
                        .font(.title)
                    
                    HStack {
                        Text("\(exercicio.series)x")
                        Text("\(exercicio.carga)kg")
                    }
                }
                .padding()
            }
        }
    }
}

struct ListaExercios_Previews: PreviewProvider {
    static var previews: some View {
        var exercicios = [
            Exercicio(
                nome: "Rosca reta direta",
                series: 3,
                carga: 15,
                anotacao: "Anotação",
                foto: "https://grandeatleta.com.br/wp-content/uploads/2018/07/rosca-direta-barra-reta-ou-w.jpg"
            ),
            Exercicio(
                nome: "Rosca reta direta",
                series: 3,
                carga: 15,
                anotacao: "Anotação",
                foto: "https://grandeatleta.com.br/wp-content/uploads/2018/07/rosca-direta-barra-reta-ou-w.jpg"
            )
        ]
        ListaExercios(exercicios: exercicios)
    }
}
