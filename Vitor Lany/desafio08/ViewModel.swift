//
//  ViewModel.swift
//  desafio08
//
//  Created by student on 14/04/23.
//

import Foundation

struct Video: Decodable {
    var name: String
    var image: String
}

class ViewModel: ObservableObject {
    
    func fetch() {
        guard let url = URL(string: "https://iosacademy.io/api/v1/courses/index.php") else {
            return
        }
        
    }
}
