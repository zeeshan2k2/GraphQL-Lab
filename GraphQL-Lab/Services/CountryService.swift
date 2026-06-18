//
//  CountryService.swift
//  GraphQL-Lab
//
//  Created by Zeeshan Waheed on 05/05/2026.
//

import Foundation
import Apollo
import ApolloAPI

class CountryService {
    static let shared = CountryService()
    
    func getCountries(completion: @escaping ([Country]) -> Void) {
        print("Request made to: https://countries.trevorblades.com/")
        ApolloManager.shared.client.fetch(query: GraphQLSchema.GetCountriesQuery()) { result in
            switch result {
            case .success(let response):
                print("✅ Data received: \(response.data?.countries.count ?? 0) countries")
                let countries = response.data?.countries.compactMap {
                    Country(id: $0.code, code: $0.code, name: $0.name, emoji: $0.emoji)
                } ?? []
                completion(countries)
            case .failure(let error):
                print("❌ Error: \(error)")
                completion([])
            }
        }
    }
}
