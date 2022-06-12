//
//  PokedexView.swift
//  Pokedex
//
//  Created by Dominik Deimel on 11.06.22.
//

import SwiftUI

struct PokedexView: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var viewModel: PokemonViewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns: gridItems, spacing:  16) {
                    ForEach(viewModel.pokemon) { pokemon in
                        PokemonCell(pokemon: pokemon, viewModel: viewModel)
                    }
                }
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
