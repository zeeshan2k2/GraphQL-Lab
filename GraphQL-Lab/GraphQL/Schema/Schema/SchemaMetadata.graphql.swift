// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

nonisolated protocol GraphQLSchema_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == GraphQLSchema.SchemaMetadata {}

nonisolated protocol GraphQLSchema_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == GraphQLSchema.SchemaMetadata {}

nonisolated protocol GraphQLSchema_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == GraphQLSchema.SchemaMetadata {}

nonisolated protocol GraphQLSchema_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == GraphQLSchema.SchemaMetadata {}

extension GraphQLSchema {
  typealias SelectionSet = GraphQLSchema_SelectionSet

  typealias InlineFragment = GraphQLSchema_InlineFragment

  typealias MutableSelectionSet = GraphQLSchema_MutableSelectionSet

  typealias MutableInlineFragment = GraphQLSchema_MutableInlineFragment

  nonisolated enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    static let configuration: any ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    private static let objectTypeMap: [String: ApolloAPI.Object] = [
      "Country": GraphQLSchema.Objects.Country,
      "Query": GraphQLSchema.Objects.Query
    ]

    static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
      objectTypeMap[typename]
    }
  }

  nonisolated enum Objects {}
  nonisolated enum Interfaces {}
  nonisolated enum Unions {}

}