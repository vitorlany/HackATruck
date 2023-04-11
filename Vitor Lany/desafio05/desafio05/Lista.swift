//
//  Lista.swift
//  desafio05
//
//  Created by student on 11/04/23.
//

import SwiftUI

struct Lista: View {
    var body: some View {
        List(1...50, id: \.self) {
            Text("teste \($0)")
        }
    }
}

struct Lista_Previews: PreviewProvider {
    static var previews: some View {
        Lista()
    }
}
