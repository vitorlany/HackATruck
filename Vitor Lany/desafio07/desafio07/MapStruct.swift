//
//  MapStruct.swift
//  desafio07
//
//  Created by student on 13/04/23.
//

import MapKit
import Foundation

struct MapStruct: Identifiable {
    var id: Int;
    var local: CLLocationCoordinate2D;
    var descricao: String
    var nome: String
    var imagem: String
}
