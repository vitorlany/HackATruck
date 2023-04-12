//
//  MusicaView.swift
//  desafio06
//
//  Created by student on 12/04/23.
//

import SwiftUI

struct MusicaView: View {
    @State var musica: Musica
    var body: some View {
        HStack {
            Group {
                AsyncImage(url: URL(string: musica.imagem)) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8.0)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 50, height: 50)
                VStack(alignment: .leading) {
                    Text(musica.nome)
                        .font(.headline)
                        .foregroundColor(Color.white)
                    
                    Text(musica.artista)
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                }
            }
            
            Spacer()
            
            Image(systemName: "ellipsis")
                .foregroundColor(Color.white)
            
        }
    }
}

struct MusicaView_Previews: PreviewProvider {
    static var previews: some View {
        let musica = Musica(id: 4, nome: "SORRY NOT SORRY", artista: "Tyler, The Creator", imagem: "https://i.scdn.co/image/ab67616d00004851aa95a399fd30fbb4f6f59fca")
        MusicaView(musica: musica)
    }
}
