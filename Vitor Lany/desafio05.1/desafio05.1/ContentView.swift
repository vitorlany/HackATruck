//
//  ContentView.swift
//  desafio05.1
//
//  Created by student on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack {
            NavigationLink("Modo 1") {Modo1()}
            NavigationLink("Modo 2") {Modo2()}
            Button("Modo 3") {
                showingSheet.toggle()
            }.sheet(isPresented: $showingSheet) {
                Text("Sheet")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
