//
//  ContentView.swift
//  desafio08
//
//  Created by student on 14/04/23.
//

import SwiftUI

struct Github: Hashable, Codable {
    var login: String = "teste"
    var name: String = "Usuario"
    var url: String = "https://google.com/"
    var avatar_url: String = "https://www.kindpng.com/picc/m/22-223863_no-avatar-png-circle-transparent-png.png"
}

class ViewModel: ObservableObject {
    @Published private var data = Github()
    
    func fetch() {
        guard let url = URL(string: "https://api.github.com/users/vitorlany") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let data = try JSONDecoder().decode(Github.self, from: data)
                DispatchQueue.main.async {
                    self?.data = data
                }
            } catch {
                print(error)
            }
        }
        
        task.resume()
    }
    
    
    func getData() -> Github {
        return data
    }
}

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            let data = viewModel.getData()
            AsyncImage(url: URL(string: data.avatar_url)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8.0)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 250, height: 250)
            
            Link(data.name, destination: URL(string: data.url)!)
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
