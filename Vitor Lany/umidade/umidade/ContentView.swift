//
//  ContentView.swift
//  umidade
//
//  Created by student on 26/04/23.
//

import SwiftUI

struct Umidade: Hashable, Decodable {
    var _id: String
    var _rev: String
    var res: String
}

class ViewModel: ObservableObject {
    @Published private var data = [
        Umidade(_id: "", _rev: "", res: "")
    ]
    
    func fetch() {
        guard let url = URL(string:  "http://127.0.0.1:1880/umidade") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let data = try JSONDecoder().decode([Umidade].self, from: data)
                DispatchQueue.main.async {
                    self?.data = data
                }
            } catch {
                print(error)
            }
        }
        
        task.resume()
    }
    
    
    func getData() -> [Umidade] {
        return data
    }
}


struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State var searchText = ""
    var body: some View {
        let data = viewModel.getData()
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                
                ScrollView {
                    Text("Histórico de Umidade")
                        .fontWeight(.bold)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                    Text("Ultima atualização: \(data[0].res)").padding()
                    
                    ForEach(data, id: \.self) {s in
                        
                        NavigationLink(s.res) {
                            Text(s.res)
                                .font(.caption)
                        }
                        .frame(width: 50, height: 50, alignment: .center)
                        .border(.black)
                        .cornerRadius(12)
                    }

                }
            }
        }
        .onAppear {
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
