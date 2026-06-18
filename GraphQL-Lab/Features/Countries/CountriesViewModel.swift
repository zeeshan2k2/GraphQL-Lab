//
//  CountriesViewModel.swift
//  GraphQL-Lab
//
//  Created by Zeeshan Waheed on 05/05/2026.
//

import Foundation
import Combine

@MainActor
class CountriesViewModel: ObservableObject {
    @Published var countries: [Country] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    func fetchCountries() {
        isLoading = true
        CountryService.shared.getCountries { [weak self] countries in
            DispatchQueue.main.async {
                self?.countries = countries
                self?.isLoading = false
            }
        }
    }
}
