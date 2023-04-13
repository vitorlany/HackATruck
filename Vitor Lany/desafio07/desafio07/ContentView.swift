//
//  ContentView.swift
//  desafio07
//
//  Created by student on 13/04/23.
//

import MapKit
import SwiftUI

struct ContentView: View {
    public var mapList: [MapStruct]
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    @State private var sheetOpen = false
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $mapRegion)
                .frame(width: 400, height: 400)
            
            ForEach(mapList) { list in
                Button(list.nome) {
                    mapRegion = MKCoordinateRegion(center: list.local, span: MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.04))
                    sheetOpen.toggle()
                }.sheet(isPresented: $sheetOpen) {
                    MapDetailsView(mapDetail: list)
                        .presentationDetents([.height(500)])
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let maplist = [
            MapStruct(
                id: 1,
                local: CLLocationCoordinate2D(latitude: -19.897786, longitude: -43.911671),
                descricao: "Bairro em Belo Horizonte",
                nome: "Horto",
                imagem: "https://www.webquarto.com.br/uploads/district/10167/district_image_0.jpg"
            ),
            MapStruct(
                id: 2,
                local: CLLocationCoordinate2D(latitude: -19.915867, longitude: -43.980815),
                descricao: "Bairro em Belo Horizonte",
                nome: "Padre Eustáquio",
                imagem: "https://www.mymall.com.br/wp-content/uploads/2016/05/Dia-Padre-Eustaquio-scaled.jpg"
            ),
            MapStruct(
                id: 3,
                local: CLLocationCoordinate2D(latitude: -19.839456, longitude: -43.977555),
                descricao: "Bairro em Belo Horizonte",
                nome: "Santa Amélia",
                imagem: "https://i.lugarcerto.com.br/nMN9yzL5WTJ-kvog_bwug2rMXfs=/smart/imgsapp.estadodeminas.lugarcerto.com.br/app/noticia_128576568202/2015/02/09/48593/20150209091021191794a.jpg"
            ),
            MapStruct(
                id: 4,
                local: CLLocationCoordinate2D(latitude: -19.936363, longitude: -43.932297),
                descricao: "Bairro em Belo Horizonte",
                nome: "Savassi",
                imagem: "https://blog.smel.com.br/wp-content/uploads/2020/02/original-a3b8562465721dc17e334957c278e73b-780x450.jpeg"
            ),
            MapStruct(
                id: 5,
                local: CLLocationCoordinate2D(latitude: -19.977231, longitude:  -44.014529),
                descricao: "Bairro em Belo Horizonte",
                nome: "Barreiro",
                imagem: "https://www.wsccontabilidade.com.br/wp-content/uploads/2020/08/Anivers%C3%A1rio-De-165-Anos-Do-Barreiro.jpg"
            )
        ]
        ContentView(mapList: maplist)
    }
}
