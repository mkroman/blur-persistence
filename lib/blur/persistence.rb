# frozen_string_literal: true

require 'sequel'

require_relative './persistence/version'
require_relative './persistence/database'

module Blur
  module Persistence
    class NoSuchScriptSetting < StandardError; end
    class NoSuchUserSetting < StandardError; end
  end
  def self.database
    Persistence::Database
  end
end

# require 'sequel/migrator'
Sequel.extension :migration
Sequel::Migrator.run Blur.database, File.join(__dir__, 'persistence/migrations')

require_relative './persistence/script_settings'
require_relative './persistence/user_settings'
