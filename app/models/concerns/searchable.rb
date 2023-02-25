# frozen_string_literal: true

module Searchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model

    index_name "elasticsearch_articles_#{Rails.env}"

    settings do
      mappings dynamic: 'false' do
        indexes :id,                   type: 'integer'
        indexes :title,                type: 'keyword'
        indexes :body,                 type: 'keyword'
      end
    end

    def self.search(query)
      # ...
    end
  end
end
