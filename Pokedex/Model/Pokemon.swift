//
//  Pokemon.swift
//  Pokedex
//
//  Created by Dominik Deimel on 11.06.22.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "pokemon", type: "poisen"),
    .init(id: 1, name: "ivysaur", imageUrl: "pokemon", type: "poisen"),
    .init(id: 2, name: "venusaur", imageUrl: "pokemon", type: "poisen"),
    .init(id: 3, name: "charmander", imageUrl: "pokemon", type: "poisen"),
    .init(id: 4, name: "charmeleon", imageUrl: "pokemon", type: "poisen"),
    .init(id: 5, name: "wartortle", imageUrl: "pokemon", type: "poisen"),
    .init(id: 6, name: "squirtle", imageUrl: "pokemon", type: "poisen"),
    .init(id: 7, name: "blastoise", imageUrl: "pokemon", type: "poisen")

]
