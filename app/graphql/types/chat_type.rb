# frozen_string_literal: true

module Types
  class ChatType < Types::BaseObject
    field :cpk, String, null: false
    field :user, String
    field :message, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
