# frozen_string_literal: true

module Blur
  module Persistence
    class ScriptSetting < Sequel::Model
      plugin :timestamps
    end
  end
end
