// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI
@_spi(Execution) @_spi(Unsafe) import ApolloAPI

extension GraphQLSchema {
  nonisolated struct GetCountriesQuery: GraphQLQuery {
    static let operationName: String = "GetCountries"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query GetCountries { countries { __typename code name emoji } }"#
      ))

    public init() {}

    nonisolated struct Data: GraphQLSchema.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: any ApolloAPI.ParentType { GraphQLSchema.Objects.Query }
      static var __selections: [ApolloAPI.Selection] { [
        .field("countries", [Country].self),
      ] }
      static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
        GetCountriesQuery.Data.self
      ] }

      var countries: [Country] { __data["countries"] }

      /// Country
      ///
      /// Parent Type: `Country`
      nonisolated struct Country: GraphQLSchema.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: any ApolloAPI.ParentType { GraphQLSchema.Objects.Country }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("code", GraphQLSchema.ID.self),
          .field("name", String.self),
          .field("emoji", String.self),
        ] }
        static var __fulfilledFragments: [any ApolloAPI.SelectionSet.Type] { [
          GetCountriesQuery.Data.Country.self
        ] }

        var code: GraphQLSchema.ID { __data["code"] }
        var name: String { __data["name"] }
        var emoji: String { __data["emoji"] }
      }
    }
  }

}