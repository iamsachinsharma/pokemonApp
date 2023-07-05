//
//  PokemonModel.swift
//  pokemonApp
//
//  Created by Sachin Sharma on 21/01/23.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let weight: Int
    let height: Int
    let attack: Int
    let defense: Int
    let description: String
}
