//
//  Category.swift
//  Flagger
//
//  Created by Lexi Harrop on 2025-04-02.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    
    case global, northAmerica, europe, southAmerica, africa, asia, oceania
    
    var id: String { self.rawValue }
    
    var name: String {
        return switch self {
        case .global: "Global"
        case .northAmerica: "North America"
        case .europe: "Europe"
        case .southAmerica:
            "South America"
        case .africa:
            "Africa"
        case .asia:
            "Asia"
        case .oceania:
            "Oceania"
        }
    }

    var image: String {
        return switch self {
        case .northAmerica: "northAmerica"
        case .europe, .global, .africa, .asia, .oceania: self.name.lowercased()
        case .southAmerica: "southAmerica"
        }
    }

    var nationality: String {
        return switch self {
        case .global: self.name
        case .northAmerica, .southAmerica, .africa, .asia, .oceania : self.name + "n"
        case .europe: self.name + "an"
        }
    }
    
}
