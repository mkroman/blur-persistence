# frozen_string_literal: true

module Blur
  module Persistence
    Database = Sequel.connect ENV['DATABASE_URL']
  end
end
