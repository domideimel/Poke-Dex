//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by Dominik Deimel on 11.06.22.
//

import SwiftUI

class PokemonViewModel: ObservableObject {
    @Published var pokemon = [Pokemon]()
    let baseURL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"

    init() {
        fetchPokemon()
    }

    func fetchPokemon() {
        guard let url = URL(string: baseURL) else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
                    guard let data = data?.parseData(removeString: "null,") else {
                        return
                    }
                    guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else {
                        return
                    }

                    DispatchQueue.main.async {
                        self.pokemon = pokemon
                    }

                }
                .resume()
    }
}

extension Data {
    func parseData(removeString string: String) -> Data? {
        let dataString = String(data: self, encoding: .utf8)
        let parsedData = dataString?.replacingOccurrences(of: string, with: "")

        guard let data = parsedData?.data(using: .utf8) else {
            return nil
        }

        return data
    }
}
