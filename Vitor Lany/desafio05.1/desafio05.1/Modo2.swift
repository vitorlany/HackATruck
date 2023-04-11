//
//  Modo2.swift
//  desafio05.1
//
//  Created by student on 11/04/23.
//

import SwiftUI

struct Modo2: View {
    var body: some View {
        NavigationLink("Próxima") {
            Text("Empilhado")
        }
    }
}

struct Modo2_Previews: PreviewProvider {
    static var previews: some View {
        Modo2()
    }
}
