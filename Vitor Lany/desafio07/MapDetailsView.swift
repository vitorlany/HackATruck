//
//  MapDetailsView.swift
//  desafio07
//
//  Created by student on 13/04/23.
//
import MapKit
import SwiftUI

struct MapDetailsView: View {
    public var mapDetail: MapStruct
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: mapDetail.imagem)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(8.0)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
        }
    }
}

struct MapDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let map = MapStruct(
            id: 1,
            local: CLLocationCoordinate2D(latitude: -19.897786, longitude: -43.911671),
            descricao: "Bairro em Belo Horizonte",
            nome: "Horto",
            imagem: "https://www.webquarto.com.br/uploads/district/10167/district_image_0.jpg"
        )
        MapDetailsView(mapDetail: map)
    }
}
