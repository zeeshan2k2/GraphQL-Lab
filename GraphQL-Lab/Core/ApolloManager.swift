//
//  ApolloManager.swift
//  GraphQL-Lab
//
//  Created by Zeeshan Waheed on 05/05/2026.
//

import Foundation
import Apollo

final class ApolloManager {
    static let shared = ApolloManager()
    
    let client: ApolloClient
    
    private init() {
        let url = URL(string: "https://countries.trevorblades.com/")!
        self.client = ApolloClient(url: url)
    }
}
