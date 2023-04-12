//
//  ContentView.swift
//  desafio06
//
//  Created by student on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    let musicas = [
        Musica(id: 1, nome: "Search & Rescue", artista: "Drake", imagem: "https://i.scdn.co/image/ab67616d00004851cace8a4b2ff924c9e12e3a96"),
        Musica(id: 2, nome: "SLUT ME OUT", artista: "NLE Choppa", imagem: "https://i.scdn.co/image/ab67616d0000485149a4f6c9a637e02252a0076d"),
        Musica(id: 3, nome: "Low Down", artista: "Lil Baby", imagem: "https://i.scdn.co/image/ab67616d0000485176a4577dd654bf457a4ad1f8"),
        Musica(id: 4, nome: "SORRY NOT SORRY", artista: "Tyler, The Creator", imagem: "https://i.scdn.co/image/ab67616d00004851aa95a399fd30fbb4f6f59fca"),
        Musica(id: 5, nome: "Blackout", artista: "Joyner Lucas", imagem: "https://i.scdn.co/image/ab67616d0000485164844c281c38a35c15e382af"),
        Musica(id: 6, nome: "PAINTING PICTURES", artista: "Superstar Pride", imagem: "https://i.scdn.co/image/ab67616d00004851d2c898fb3f092fb12e5132d5")
    ]
    
    var body: some View {
        VStack {
            NavigationStack {
                ScrollView {
                    Image("bg")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .cornerRadius(16.0)
                    
                    Text("HackFM")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    Group {
                        ForEach(musicas) { musica in
                            NavigationLink(destination: PlayerView(musica: musica)) {
                                MusicaView(musica: musica)
                            }
                        }.padding(.bottom)
                    }.padding(.horizontal)
                    
                }
                .background(LinearGradient(gradient: Gradient(colors: [.green, .black]), startPoint: .top, endPoint: .bottom))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
