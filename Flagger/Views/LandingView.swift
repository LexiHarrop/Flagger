//
//  ContentView.swift
//  Flagger
//
//  Created by Lexi Harrop on 2025-04-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Divider()
                    .background(
                        Color.highlightColour
                            .shadow(.drop(radius: 2.0)),
                        ignoresSafeAreaEdges: .top
                    )
                ZStack {
                    Color.backgroundColour
                        .ignoresSafeArea()
                    ScrollView {
                        ForEach(Category.allCases) { category in
                            ZStack {
                                Color.secondary
                                    .cornerRadius(10.0)
                                NavigationLink(destination: QuizStartView(category: category)) {
                                    HStack {
                                        Text(category.name)
                                            .font(.title)
                                        Spacer()
                                    }
                                    .padding()
                                }
                            }
                            .padding([.top, .trailing, .leading], 16)
                        }
                    }
                    .navigationTitle("Areas")
                    .foregroundStyle(Color.accentColour)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
