//
//  PlayerView.swift
//  desafio06
//
//  Created by student on 12/04/23.
//

import SwiftUI

struct PlayerView: View {
    @State var musica: Musica
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                AsyncImage(url: URL(string: musica.imagem)) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200, height: 200)
                
                Text(musica.nome)
                    .font(.title)
                    .foregroundColor(Color.white)
                
                Text(musica.artista)
                    .font(.caption)
                    .foregroundColor(Color.white)
                
                
                HStack {
                    Image(systemName: "play.fill")
                }
                .foregroundColor(Color.white)
                .padding()
            }
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        let musica = Musica(id: 4, nome: "SORRY NOT SORRY", artista: "Tyler, The Creator", imagem: "https://i.scdn.co/image/ab67616d00004851aa95a399fd30fbb4f6f59fca")
        PlayerView(musica: musica)
    }
}
