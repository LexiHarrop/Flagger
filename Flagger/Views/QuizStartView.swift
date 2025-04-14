//
//  QuizStartView.swift
//  Flagger
//
//  Created by Lexi Harrop on 2025-04-02.
//

import SwiftUI

struct QuizStartView: View {
    
    let category: Category
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.backgroundColour
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Text(category.nationality + " Flag Quiz")
                        .font(.largeTitle)
                        .foregroundStyle(.accentColour)
                        .padding(.top, 32)
                    
                    Text("A quiz with countries from " + (category == .global ? "all countries" : category.name))
                        .font(.title3)
                        .padding(.top)
                        .foregroundStyle(.accentColour)
                    
                    Spacer()
                    Button(action: {}, label: {
                        NavigationLink(
                            destination: QuizView(),
                            label: {
                                
                                ZStack {
                                    Color.primaryColour
                                        .cornerRadius(16)
                                    Text("Start the " + category.nationality.lowercased() + " flag quiz")
                                    
                                }
                                .frame(height: 48)
                                .padding(EdgeInsets(
                                    top: 0,
                                    leading: 86,
                                    bottom: 0,
                                    trailing: 86))
                            })
                        .foregroundStyle(.highlightColour)
                    })
                    Spacer()
                }
                
            }
        }
    }
}

#Preview {
    QuizStartView(category: .global)
}
