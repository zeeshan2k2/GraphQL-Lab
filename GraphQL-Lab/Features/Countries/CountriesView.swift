//
//  ContentView.swift
//  GraphQL-Lab
//
//  Created by Zeeshan Waheed on 05/05/2026.
//

import SwiftUI

struct CountriesView: View {
    @StateObject private var viewModel = CountriesViewModel()
    
    var body: some View {
        NavigationView {
            Group {
                if viewModel.isLoading {
                    ProgressView()
                } else {
                    List(viewModel.countries) { country in
                        HStack {
                            Text(country.emoji)
                                .font(.largeTitle)
                            VStack(alignment: .leading) {
                                Text(country.name)
                                    .font(.headline)
                                Text(country.code)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Countries")
            .onAppear {
                viewModel.fetchCountries()
            }
        }
    }
}
