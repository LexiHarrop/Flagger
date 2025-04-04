//
//  Category.swift
//  Flagger
//
//  Created by Lexi Harrop on 2025-04-02.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    
    case global, northAmerica, europe, oceania
    
    var id: String { self.rawValue }
    
    var name: String {
        return switch self {
        case .global: "Global"
        case .northAmerica: "North America"
        case .europe: "Europe"
        }
    }

    var image: String {
        return switch self {
        case .northAmerica: "northAmerica"
        case .europe, .global: self.name.lowercased()
        }
    }

    var nationality: String {
        return switch self {
        case .global: self.name
        case .northAmerica: self.name + "n"
        case .europe: self.name + "an"
        }
    }
}
